import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/chat_page.dart';

class messeges_body extends StatelessWidget {
  const messeges_body({
    super.key,
    required this.imagesD,
  });

  final List imagesD;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Activ Now',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 10,
                      )
                    ]),
                child: Stack(
                  // textDirection: TextDecoration.rtl,
                  children: [
                    Center(
                      child: Container(
                        height: 65,
                        width: 65,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/images/${imagesD[index]}',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6),
                      padding: EdgeInsets.all(3),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Activ Now',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatPage()));
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage('assets/images/${imagesD[index]}'),
                ),
                title: Text(
                  'Dr Doctors Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Hello doctor are you there?',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  '12:30',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
