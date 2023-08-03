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
          TextField(
              decoration: InputDecoration(
                  hintText: 'enter your masseges',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 4)),
                  labelText: 'enter your masseges',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  focusColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)))),
        ],
      ),
    );
  }
}
