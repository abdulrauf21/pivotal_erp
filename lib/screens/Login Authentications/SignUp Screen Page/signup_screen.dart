import 'package:flutter/material.dart';
import 'package:pivotal_erp/screens/Login%20Authentications/Login%20Screen%20Page/login_screen.dart';

import 'package:pivotal_erp/screens/Login Authentications/Controller/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                          "Create your new Account...",
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
                            height: 180,
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
                                ),
                                TextField(
                                  controller: _confirmPasswordController,
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
                                      icon: Icon(Icons.key_outlined)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "By registering, you are agreeing to our ",
                                    style: TextStyle(color: Colors.black54)),
                                TextSpan(
                                  text: "Terms of use",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                    text: " and ",
                                    style: TextStyle(color: Colors.black54)),
                                TextSpan(
                                  text: "Privacy policy",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            if (_emailController.text.isNotEmpty &&
                                _passwordController.text.isNotEmpty &&
                                _confirmPasswordController.text.isNotEmpty) {
                              if (_passwordController.text ==
                                  _confirmPasswordController.text) {
                                Provider.of<AuthProvider>(context,
                                        listen: false)
                                    .signUpWithEmailAndPassword(
                                        _emailController.text,
                                        _passwordController.text,
                                        context)
                                    .then((value) {
                                  if (value == true) {
                                    _emailController.clear();
                                    _passwordController.clear();
                                    _confirmPasswordController.clear();
                                  }
                                });
                              } else {
                                final snackbar = SnackBar(
                                    content: Text("Password didn't match"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              }
                            } else {
                              final snackbar = SnackBar(
                                  content: Text("All fields are required"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackbar);
                            }
                          },
                          child: Chip(
                            label: Text(
                              "Sign Up",
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
                                builder: (context) => LoginScreen()));
                          },
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Already have an account? ",
                                    style: TextStyle(color: Colors.black54)),
                                TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
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
          Provider.of<AuthProvider>(context).isLoading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
