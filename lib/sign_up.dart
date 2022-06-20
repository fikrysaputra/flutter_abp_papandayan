import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            color: Color(0xFFFFFFFF),
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
                        const SizedBox(height: 30),
                        const Text(
                          'Yu Daftar dan kepoin \nTaman Wisata Alam \nGunung Papandayan',
                          style: TextStyle(
                              color: Color(0xFF909093),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: const TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "Mobile Number or Email",
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
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: const TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "UserName",
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
                                            BorderSide(color: Colors.grey))),
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
                                      // Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                                    },
                                    child: const Center(
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Or sign up with another\naccount.',
                          style: TextStyle(
                              color: Color(0xFF909093),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
