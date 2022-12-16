import 'package:flutter/material.dart';

import 'package:pivotal_erp/screens/nav_page.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 250, 254),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 240, 250, 254),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 20, bottom: 20),
              child: Image(
                image: AssetImage(
                  "assets/images/logos/Email-Gif.gif",
                ),
              ),
            ),
            Text(
              "OTP Verification",
              style: TextStyle(fontSize: 25, color: Colors.orange),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "An email verification code has been sent to your email, please enter the OTP below",
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              spacing: 10,
              direction: Axis.horizontal,
              children: List.generate(
                6,
                (index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlue.shade100,
                          blurRadius: 1,
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "Didn't received any OTP?  ",
                      style: TextStyle(color: Colors.black54)),
                  TextSpan(
                    text: "Resend OTP",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NavPage()));
              },
              child: Chip(
                label: Text(
                  "Verify and proceed",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                backgroundColor: Color.fromARGB(255, 240, 131, 42),
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 12, bottom: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
