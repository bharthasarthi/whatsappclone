/* 
This is Whatsapp_status page. it is seventh page of whatsapp clone.
it is used in list of profile pic,name, and time.
**/

import 'package:flutter/material.dart';

class whatsappstatus extends StatelessWidget {
  const whatsappstatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ////////profile pic,
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://tse1.mm.bing.net/th?id=OIP.oGbDRPLX7UxEyPIsVDCUHgHaHh&pid=Api&P=0&h=180"),
                ),
              ),

              //////text in My status
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My status",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  ///////text in add status
                  Text(
                    "Tap to add status update",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          //////text in update status
          const Row(
            children: [
              Text(
                "   Updated status",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          ///////list of profile pic,name,time.
          Column(
            children: [
              listbuild(
                  "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=180",
                  "emi",
                  "8.20PM"),
              listbuild(
                "https://tse2.mm.bing.net/th?id=OIP.sCYyMhieH6_oZsU4fw-09AHaHa&pid=Api&P=0&h=180",
                "jo",
                "6.03PM",
              ),
              listbuild(
                "https://i.pinimg.com/originals/75/d0/74/75d0748580c26ec1669b0a667986943a.jpg",
                "ram",
                "5.40PM",
              ),
              listbuild(
                "https://i.pinimg.com/originals/28/3a/b1/283ab1108ef8e379a2e555de019e1aee.jpg",
                "sarathi",
                "5.35PM",
              ),
              listbuild(
                  "https://i.pinimg.com/736x/4d/05/6f/4d056f63724f9bd82eebd336c01c72cc.jpg",
                  "riya",
                  "4.45PM"),
              listbuild(
                  "https://i.pinimg.com/originals/84/80/6b/84806b1284de3f0ef1d44e9c33ca0b17.jpg",
                  "priya",
                  "2.30PM"),
              listbuild(
                  "https://i.pinimg.com/originals/9e/13/c9/9e13c910b2c3feeca5d2de6dd883ad65.jpg",
                  "edward",
                  "1.00PM"),
              listbuild(
                  "https://i.pinimg.com/originals/d9/c2/66/d9c266d772be275b3debdda807239dca.jpg",
                  "edin",
                  "11.30AM"),
              listbuild(
                  "https://i.pinimg.com/originals/49/1a/d2/491ad2a14e8c7e1e5a0051c2c270bdbc.jpg",
                  "roy",
                  "11.00AM"),
              listbuild(
                  "https://i.pinimg.com/originals/8a/51/cb/8a51cb8b212c647a616ef6c6cc35205a.jpg",
                  "abi",
                  "10.35AM"),
            ],
          ),
        ],
      ),
    ));
  }

////method used for list in profile pic,name,time.
  ListTile listbuild(image, name, min) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.green,
        child: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(image),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 20),
      ),
      subtitle: Text(min, style: const TextStyle(fontSize: 18)),
    );
  }
}
