import 'package:flutter/material.dart';
import 'package:pivotal_erp/screens/Login%20Authentications/SignUp%20Screen%20Page/signup_screen.dart';
import 'package:pivotal_erp/screens/nav_page.dart';
import 'package:provider/provider.dart';

import '../Controller/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Color.fromARGB(255, 4, 255, 0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 40, right: 40, top: 80, bottom: 40),
                          child: Image(
                            image: AssetImage(
                                "assets/images/logos/dynamic_text_logo.png"),
                          ),
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sign in to your Account...",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 270,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(253, 243, 246, 253),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 30),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 243, 246, 253),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.lightBlue.shade100,
                                  blurRadius: 3,
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    1.0, // Move to right 5  horizontally
                                    2.0, // Move to bottom 5 Vertically
                                  ),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      icon: Icon(Icons.email)),
                                ),
                                TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      icon: Icon(Icons.key_outlined)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "forgot password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 174, 82)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (_emailController.text.isNotEmpty &&
                                _passwordController.text.isNotEmpty) {
                              Provider.of<AuthProvider>(context, listen: false)
                                  .signInWithEmailAndPassword(
                                      _emailController.text,
                                      _passwordController.text,
                                      context)
                                  .then((value) {
                                if (value == true) {
                                  _emailController.clear();
                                  _passwordController.clear();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NavPage(),
                                    ),
                                  );
                                }
                              });
                            } else {
                              final snackBar = SnackBar(
                                  content: Text(
                                      "Email and password are required !!"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Chip(
                            label: Text(
                              "Sign In",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            backgroundColor: Color.fromARGB(255, 240, 131, 42),
                            padding: EdgeInsets.only(
                                left: 50, right: 50, top: 10, bottom: 10),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                          },
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Haven't registered yet?  ",
                                    style: TextStyle(color: Colors.black54)),
                                TextSpan(
                                  text: "Register Now",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "or",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Continue with",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                    height: 50,
                                    width: 50,
                                    image: AssetImage(
                                        "assets/images/logos/Facebook_logo.png")),
                                Image(
                                    height: 40,
                                    width: 40,
                                    image: AssetImage(
                                        "assets/images/logos/gooogle_logo.png")),
                                Image(
                                    height: 45,
                                    width: 45,
                                    image: AssetImage(
                                        "assets/images/logos/mobile_Logo.png"))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Provider.of<AuthProvider>(context).isLoading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
