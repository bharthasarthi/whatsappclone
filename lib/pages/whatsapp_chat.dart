/* 
This is Whatsapp_chat page. it is sixth page of whatsapp clone.
it is used in list of profile pic,name,message, and time.
**/

import 'package:flutter/material.dart';

class whatsapplist extends StatelessWidget {
  const whatsapplist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      ////////list of profile pic,name,message,and time
      child: Column(
        children: [
          listbuild(
              "https://tse3.mm.bing.net/th?id=OIP._9_eV7XFIqQyc1rUFXp5-gHaEK&pid=Api&P=0&h=180",
              "emi",
              "hi dude",
              "20/05/2023"),
          listbuild(
            "https://tse2.mm.bing.net/th?id=OIP.sCYyMhieH6_oZsU4fw-09AHaHa&pid=Api&P=0&h=180",
            "jo",
            "yenna pandra?",
            "20/05/2023",
          ),
          listbuild(
            "https://i.pinimg.com/originals/75/d0/74/75d0748580c26ec1669b0a667986943a.jpg",
            "ram",
            "hi mamey",
            "05/04/2024",
          ),
          listbuild(
            "https://i.pinimg.com/originals/28/3a/b1/283ab1108ef8e379a2e555de019e1aee.jpg",
            "sarathi",
            "machaaaaa",
            "01/03/2024",
          ),
          listbuild(
              "https://i.pinimg.com/736x/4d/05/6f/4d056f63724f9bd82eebd336c01c72cc.jpg",
              "riya",
              "hey dude..",
              "02/80/2023"),
          listbuild(
              "https://i.pinimg.com/originals/84/80/6b/84806b1284de3f0ef1d44e9c33ca0b17.jpg",
              "priya",
              "yeppdi irruka?",
              "04/04/2024"),
          listbuild(
              "https://i.pinimg.com/originals/9e/13/c9/9e13c910b2c3feeca5d2de6dd883ad65.jpg",
              "edward",
              "ela mamey",
              "10/08/2023"),
          listbuild(
              "https://i.pinimg.com/originals/d9/c2/66/d9c266d772be275b3debdda807239dca.jpg",
              "edin",
              "hi buddy",
              "05/09/2023"),
          listbuild(
              "https://i.pinimg.com/originals/49/1a/d2/491ad2a14e8c7e1e5a0051c2c270bdbc.jpg",
              "roy",
              "yenga irruka",
              "01/03/2024"),
          listbuild(
              "https://i.pinimg.com/originals/8a/51/cb/8a51cb8b212c647a616ef6c6cc35205a.jpg",
              "abi",
              "good",
              "25/02/2023"),
        ],
      ),
    ));
  }

  ////////list used for method profile pic,name,message,and time
  ListTile listbuild(
    Image,
    name,
    mes,
    time,
  ) {
    return ListTile(
      leading: CircleAvatar(radius: 30, backgroundImage: NetworkImage(Image)),
      title: Text(
        name,
        style: const TextStyle(fontSize: 20),
      ),
      subtitle: Text(mes, style: const TextStyle(fontSize: 18)),
      trailing: Column(children: [
        Text(
          time,
          style: const TextStyle(fontSize: 14),
        ),
        const Icon(
          Icons.done_all,
          color: Colors.blue,
        )
      ]),
    );
  }
}
