import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/widgets/cotologs/cokologs.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/widgets/messeges_body.dart';

class MessegesPage extends StatefulWidget {
  @override
  State<MessegesPage> createState() => _MessegesPageState();
}

class _MessegesPageState extends State<MessegesPage> {
  List imagesD = [
    'd8.jpg',
    'doctor4.jpg',
    'doctor1.jpg',
    'doctor3.jpg',
    'doctor4.jpg',
    'd5.jpg',
    'd6.jpg',
    'd1.jpg',
  ];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Messeges',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          SizedBox(
            height: 30,
          ),
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
                        controller: controller,
                        decoration: InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Color(0xff7165d6),
                  ),
                ],
              ),
            ),
          ),
          controller.text.isEmpty
              ? messeges_body(imagesD: imagesD)
              : Catalogs(),
        ],
      ),
    );
  }
}
