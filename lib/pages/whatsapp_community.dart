/* 
This is Whatsapp_community page. it is fifth page of whatsapp clone.
it is used in community icon,community text,community start container.

**/

import 'package:flutter/material.dart';

class WhatsappCommunity extends StatelessWidget {
  const WhatsappCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //////community icon
          const Center(
            child: Icon(
              Icons.groups_3,
              size: 300,
            ),
          ),

          /////text
          const Text(
            "Stay connected with a community",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Comments bring members together in topic-based groups, and make it easy to get admin announcements.Any community you're added to will appear here.",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "See example communities  >",
            style: TextStyle(fontSize: 15, color: Colors.green),
          ),
          const SizedBox(
            height: 20,
          ),

          //////container for community
          Container(
            height: 35,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: const Text(
              "Start your community",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
