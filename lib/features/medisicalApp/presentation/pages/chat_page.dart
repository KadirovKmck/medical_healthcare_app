import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Color(0xff7165d6),
            leadingWidth: 30,
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/d1.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Dr Doctor Name',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 8, right: 20),
                child: Icon(Icons.call),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, right: 20),
                child: Icon(Icons.camera_alt_outlined),
              )
            ],
          ),
          preferredSize: Size.fromHeight(70)),
      body: Column(
        children: [
          Expanded(
              child: SizedBox(
            height: 70,
          )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {});
                        },
                        // controller: controller,
                        decoration: InputDecoration(
                            hintText: 'Enter your messeges',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.send,
                    color: Color(0xff7165d6),
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
