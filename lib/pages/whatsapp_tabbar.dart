/* 
This is Whatsapp_tabbar page. it is fourth page of whatsapp clone.
it is used in Tabbar for community,chats,status,calls,and tabbar_view ,and floating action button.

**/

import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/whatsapp_calls.dart';
import 'package:whatsappclone/pages/whatsapp_chat.dart';
import 'package:whatsappclone/pages/whatsapp_community.dart';
import 'package:whatsappclone/pages/whatsapp_status.dart';

class whatsapptab extends StatefulWidget {
  const whatsapptab({super.key});

  @override
  State<whatsapptab> createState() => _whatsapptabState();
}

class _whatsapptabState extends State<whatsapptab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /////appbar for whatsapp,icon in camera,search,more
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Whatsapp"),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 18,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert)
          ],

          /////Tabbar
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls')
            ],
          ),
        ),

        /////Tabbar_view
        body: TabBarView(
          controller: tabController,
          children: const [
            WhatsappCommunity(),
            whatsapplist(),
            whatsappstatus(),
            whatsappcalls(),
          ],
        ),

        //////Floating action button
        floatingActionButton: tabController.index == 0
            ? FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.greenAccent,
                onPressed: () {},
              )
            : tabController.index == 1
                ? FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.chat),
                    backgroundColor: Colors.greenAccent)
                : tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.edit),
                              backgroundColor: Colors.white),
                          const SizedBox(
                            height: 20,
                          ),
                          FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.camera_alt_outlined),
                              backgroundColor: Colors.greenAccent)
                        ],
                      )
                    : FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.call),
                        backgroundColor: Colors.greenAccent));
  }
}
