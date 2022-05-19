import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../addproduk/tambah_produk.dart';
import 'models/chatUsersModel.dart';
import 'conversationList.dart';

class AdminChat extends StatefulWidget {
  const AdminChat({Key? key}) : super(key: key);

  @override
  _AdminChatState createState() => _AdminChatState();
}


class _AdminChatState extends State<AdminChat> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Maya Setyaningsih", messageText: "Ada yang bisa saya bantu?", imageURL: "https://randomuser.me/api/portraits/women/11.jpg", time: "Now"),
    ChatUsers(name: "Arief Munarwan", messageText: "Terima kasih, Senang membantu anda ", imageURL: "https://randomuser.me/api/portraits/men/11.jpg", time: "Yesterday"),
    ChatUsers(name: "Agus Tano", messageText: "Terima kasih, Senang membantu anda", imageURL: "https://randomuser.me/api/portraits/men/9.jpg", time: "Yesterday"),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Chat",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () { },
            icon: SvgPicture.asset('assets/icons/icon_search.svg'),
            color: Colors.black87,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                child: Expanded(
                  child: ListView(
                    children: [
                      ListView.builder(
                        itemCount: chatUsers.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 16),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index){
                          return ConversationList(
                            name: chatUsers[index].name,
                            messageText: chatUsers[index].messageText,
                            imageUrl: chatUsers[index].imageURL,
                            time: chatUsers[index].time,
                            isMessageRead: (index == 0 || index == 3)?true:false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}



