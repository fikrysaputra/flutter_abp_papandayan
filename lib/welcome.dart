// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import './dashboard.dart';
import './auth.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _Welcome createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 254, 255, 246),
            ),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipPath(
                          clipper: WaveClipperOne(),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120.0,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF9DBE76),
                                  Color(0xFF74A730),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Taman Wisata Alam \nGunung Papandayan',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Tempat Wisata yang cocok \nuntuk keluarga',
                        style: TextStyle(
                            color: Color(0xFF777779),
                            fontWeight: FontWeight.bold,
                            fontSize: 18, ),
                      ),
                    ),
                    const SizedBox(height: 180),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Container(
                          height: 50,
                          width: 240.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF34a853),
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
                              signInWithGoogle().then((result) {
                                if (result != null) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Dashboard();
                                      },
                                    ),
                                  );
                                }
                              });
                            },
                            child: const Center(
                              child: Text(
                                "Masuk Dengan Google",
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
              ],
            )),
      ),
    );
  }
}
