// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'pesanan.dart';
import 'review.dart';
import 'welcome.dart';
import 'auth.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEDCF),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    imageUrl,
                  ),
                  radius: 40,
                  backgroundColor: const Color(0xFF74A730),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text("Selamat Datang !"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Color(0xff436904),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    keluarDialog();
                  },
                  alignment: Alignment.centerRight,
                  icon: const Icon(Icons.logout_outlined,
                      color: Colors.red, size: 30.0),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child:
                  const Text('Dashboard', style: TextStyle(color: Colors.grey, fontSize: 25)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 600.0,
              child: GridView(
                padding: const EdgeInsets.all(20.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF74A730)),
                      color: const Color(0xFF9DBE76),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ], 
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    height: 100,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const AddUser();
                            },
                          ));
                        },
                        child: const Center(
                          child: Text(
                            "Berikan Review",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF74A730)),
                        color: const Color(0xFF9DBE76),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 100,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) {
                            return const ReviewInformation();
                          }), ModalRoute.withName('/daftarreview'));
                        },
                        child: const Center(
                          child: Text(
                            "Baca Review",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF74A730)),
                        color: const Color(0xFF9DBE76),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 100,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) {
                            return const PesanTiket();
                          }), ModalRoute.withName('/pesanan'));
                        },
                        child: const Center(
                          child: Text(
                            "Pesan Tiket",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF74A730)),
                        color: const Color(0xFF9DBE76),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 100,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) {
                            return const ReviewPesanan();
                          }), ModalRoute.withName('/pesanansaya'));
                        },
                        child: const Center(
                          child: Text(
                            "Pesanan Saya",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> keluarDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF9DBE76),
          title: const Text('Izin Keluar'),
          content: const SingleChildScrollView(
            child: Text(
              'Yakin ingin keluar ?',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Tidak'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Ya'),
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const Welcome();
                }), ModalRoute.withName('/'));
              },
            ),
          ],
        );
      },
    );
  }
}
