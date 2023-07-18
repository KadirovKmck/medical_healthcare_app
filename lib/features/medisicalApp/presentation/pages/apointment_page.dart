import 'package:flutter/material.dart';

class ApointmentPage extends StatelessWidget {
  List imgs = [
    'd8.jpg',
    'doctor4.jpg',
    'doctor1.jpg',
    'd1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7165D6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
