/* 
This is signup page. it is second page of whatsapp clone.
it is used in Whatsapp logo,textfield in name,textfield in phone number,send otp container,login gesture,terms and condition line.

**/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/login/OTPpage.dart';
import 'package:whatsappclone/login/login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          /////////Whatsapp logo
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

          //////Textfield in name
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter your Name",
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          ///////Textfield in phone number
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
            height: 20,
          ),

          ///////Send otp container. it is linked in OTP page
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
            height: 20,
          ),

          ///////login page link
          GestureDetector(
            onTap: () {
              Get.to(LoginPage());
            },
            child: const Center(
              child: Text(
                "Login your account",
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),

          ///////terms and condition line
          const Center(
            child: Text(
              "Read our Privacy policy.Tap Agree & Continue.To accept the Terms of service",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
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
