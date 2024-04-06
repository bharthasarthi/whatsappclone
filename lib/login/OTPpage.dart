/*

 
This is OTP page. it is Third page of whatsapp clone.
it is used in Whatsapp logo,textfield in OTP,Done container,Resend OTP gesture,terms and condition line.


 **/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/login/login.dart';
import 'package:whatsappclone/pages/whatsapp_tabbar.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //////Whatsapp logo
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

          //////Textfield OTP
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter your OTP",
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          ///////OTP Done container.it is linked in Whatsapptab page
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(40)),
            child: GestureDetector(
              onTap: () {
                Get.to(whatsapptab());
              },
              child: const Center(
                child: Text(
                  "Done",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),

          /////Resend OTP container .it is link in loginpage
          GestureDetector(
              onTap: () {
                Get.to(LoginPage());
              },
              child: const Text(
                "Resend OTP",
                style: TextStyle(color: Colors.green, fontSize: 20),
              )),
          const SizedBox(
            height: 130,
          ),

          //////terms and conditions
          const Center(
            child: Text(
              "Read our Privacy policy.Tap Agree & Continue.To accept the Terms of service",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 80,
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
