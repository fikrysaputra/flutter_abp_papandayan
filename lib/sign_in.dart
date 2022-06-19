import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFF9AB106),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF000000)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 254, 255, 246),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          'Masuk',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Selamat Datang !',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 70),
                        SizedBox(
                          width: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromARGB(
                                                255, 254, 255, 246)))),
                                child: const TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "Username / E-mail",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent))),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Color.fromARGB(
                                                255, 254, 255, 246)))),

                                child: const TextField(
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blueAccent))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                            height: 50,
                            width: 320,

                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(colors: [
                                Color(0xFF436904),
                                Color(0xFD74A730)
                              ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                              },
                              child: const Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
