// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'dashboard.dart';
//import 'package:twapapandayan/dashboard.dart';
//import 'package:ticketview/ticketview.dart';

class PesanTiket extends StatelessWidget {
  const PesanTiket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference tiket = FirebaseFirestore.instance.collection('tiket');

    Future<void> pesantiket(String tiketIs, String hargaIs) {
      return tiket
          .add({'tiket': tiketIs, 'harga': hargaIs})
          .then((value) => print("Tiket dipesan"))
          .catchError((error) => print("Failed to add user: $error"));
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
            }),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color(0XFF74a730),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Tiket Masuk",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const Text(
                          "Rp 25.000,-",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Beli Tiket'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text('Yakin ingin membeli Tiket ?'),
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
                                          pesantiket(
                                              "Tiket Masuk", "Rp 25.000,-");
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                            return const ReviewPesanan();
                                          }),
                                                  ModalRoute.withName(
                                                      '/pesanansaya'));
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Center(
                              child: Text(
                                "Beli",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xff436904),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Tiket Camping",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const Text(
                          "Rp 55.000,-",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Beli Tiket'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text('Yakin ingin membeli Tiket ?'),
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
                                          pesantiket(
                                              "Tiket Camping", "Rp 55.000,-");
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                            return const ReviewPesanan();
                                          }),
                                                  ModalRoute.withName(
                                                      '/pesanansaya'));
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Center(
                              child: Text(
                                "Beli",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xff74a730),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Tiket Kolam Renang",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const Text(
                          "Rp 15.000,-",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Beli Tiket'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text('Yakin ingin membeli Tiket ?'),
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
                                          pesantiket("Tiket Kolam Renang",
                                              "Rp 15.000,-");
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                            return const ReviewPesanan();
                                          }),
                                                  ModalRoute.withName(
                                                      '/pesanansaya'));
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Center(
                              child: Text(
                                "Beli",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xff436904),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Tiket Parkir Mobil",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const Text(
                          "Rp 5.000,-",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Beli Tiket'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text('Yakin ingin membeli Tiket ?'),
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
                                          pesantiket("Tiket Parkir Mobil",
                                              "Rp 15.000,-");
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                            return const ReviewPesanan();
                                          }),
                                                  ModalRoute.withName(
                                                      '/pesanansaya'));
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Center(
                              child: Text(
                                "Beli",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xff74a730),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Tiket Parkir Motor",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const Text(
                          "Rp 2.000,-",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(
                          width: 60.0,
                          height: 25.0,
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Beli Tiket'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text('Yakin ingin membeli Tiket ?'),
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
                                          pesantiket("Tiket Parkir Motor",
                                              "Rp 2.000,-");
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                            return const ReviewPesanan();
                                          }),
                                                  ModalRoute.withName(
                                                      '/pesanansaya'));
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Center(
                              child: Text(
                                "Beli",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewPesanan extends StatefulWidget {
  const ReviewPesanan({Key? key}) : super(key: key);

  @override
  _ReviewPesanan createState() => _ReviewPesanan();
}

class _ReviewPesanan extends State<ReviewPesanan> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('tiket').snapshots();

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
              title: const Text("Daftar Pesanan"),
              centerTitle: true,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const Dashboard();
                      },
                    ));
                  }),
            ),
          body: ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: Text("Janis Tiket : ${data['tiket']}"),
                  subtitle: Text("Harga : ${data['harga']}"),
                );
              }).toList(),
            ),
          );
        });
  }
}
