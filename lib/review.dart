// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:twapapandayan/dashboard.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference comment =
        FirebaseFirestore.instance.collection('komentar');

    TextEditingController ratingIs = TextEditingController();
    TextEditingController komentIs = TextEditingController();

    Future<void> addUser() {
      return comment
          .add({'rating': ratingIs.text, 'komentar': komentIs.text})
          .then((value) => print("Review ditambahkan"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Review"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: ratingIs,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(
                Icons.star,
                color: Colors.amberAccent,
              ),
              hintText: 'Rate dari 1-5',
              labelText: 'Rate',
            ),
            onSaved: (String? value) {
              ratingIs;
            },
          ),
          TextFormField(
              controller: komentIs,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(
                  Icons.comment,
                  color: Colors.amberAccent,
                ),
                hintText: 'Berikan Komentarmu',
                labelText: 'Komentar',
              ),
              maxLines: 5,
              onSaved: (String? value) {
                komentIs;
              }),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
                height: 50,
                width: 240.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Yakin ?'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget>[
                                Text('Yakin ingin menambahkan Review ? \nReview tidak dapat dihapus'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Tidak'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Iya'),
                              onPressed: () {
                                addUser();
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(builder: (context) {
                                  return const ReviewInformation();
                                }), ModalRoute.withName('/daftarreview'));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Masukan Review",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class ReviewInformation extends StatefulWidget {
  const ReviewInformation({Key? key}) : super(key: key);

  @override
  _ReviewInformation createState() => _ReviewInformation();
}

class _ReviewInformation extends State<ReviewInformation> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('komentar').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: ListTile(
              leading: CircularProgressIndicator(),
              title: Text('Loading...'),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Review"),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const Dashboard();
                    },
                  ));
                } 
              ),
          ),
          body: ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return ListTile(
                title: Text("Rating : ${data['rating']}"),
                subtitle: Text("Komentar : ${data['komentar']}"),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
