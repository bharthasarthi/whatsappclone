/* 
This is Login page. it is first page of whatsapp clone.
it is used in Whatsapp logo,textfield in phone number,send otp container,signup gesture,terms and condition line.

**/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/login/OTPpage.dart';
import 'package:whatsappclone/login/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ///////Whatsapp Logo
          Container(
            alignment: Alignment.bottomCenter,
            height: 300,
            width: 415,
            //color: Colors.amber,
            child: const Image(
                image: NetworkImage(
                    "https://tse4.mm.bing.net/th?id=OIP.-DVWS8a9pK-o7YDaykXAzQHaHa&pid=Api&P=0&h=180")),
          ),
          const Center(
            child: Text(
              "Welcome to Whatsapp",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          /////Textfield phone number
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          ///////OTP container
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(40)),
            child: GestureDetector(
              onTap: () {
                Get.to((OtpPage()));
              },
              child: const Center(
                child: Text(
                  "Send OTP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          /////signup
          GestureDetector(
            onTap: () {
              Get.to(SignupPage());
            },
            child: const Center(
              child: Text(
                "Signup your account",
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 130,
          ),

          //////////terms and contions line
          const Center(
            child: Text(
              "Read our Privacy policy.Tap Agree & Continue.To accept the Terms of service",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 80,
          ),

          ////////Facebook
          const Center(
            child: Text(
              "FACEBOOK",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}
