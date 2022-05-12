import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'models/chatMessageModel.dart';

class ChatDetailPage extends StatefulWidget{
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    // ChatMessage(messageContent: "Selamat siang", messageType: "sender"),
    ChatMessage(messageContent: "Pak saya buat tawaran untuk jahe ya", messageType: "receiver"),
    // ChatMessage(messageContent: "Ada yang bisa saya bantu?", messageType: "receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/11.jpg"),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Maya Setyaningsih",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 3),
                        Text("Online",style: TextStyle(color: Colors.grey.shade700, fontSize: 13),),
                      ],
                    ),
                  ),
                  Icon(Icons.local_phone,color: Colors.black54),
                  SizedBox(width: 16),
                  Icon(Icons.videocam_rounded,color: Colors.black54),
                ],
              ),
            ),
          ),
        ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver" ? Alignment.topLeft : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver" ? Colors.grey.shade200 : Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  IconButton(
                        onPressed: () { },
                        icon: SvgPicture.asset('assets/icons/icon_add_photo.svg'),
                        color: Colors.black87,
                      ),
                  Spacer(),
                  Container(
                    width: (MediaQuery.of(context).size.width)* 0.70,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Ketik pesan disini...",
                        hintStyle: TextStyle(color: Colors.grey.shade600),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        contentPadding: EdgeInsets.all(12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.grey.shade100
                            )
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Color(0xFF00838f),size: 30,),
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}