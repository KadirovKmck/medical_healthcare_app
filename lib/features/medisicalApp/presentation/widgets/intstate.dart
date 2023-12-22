import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/wellcom_page.dart';

class InitStateWidgets extends StatefulWidget {
  InitStateWidgets({Key? key}) : super(key: key);

  @override
  State<InitStateWidgets> createState() => _InitStateWidgetsState();
}

class _InitStateWidgetsState extends State<InitStateWidgets> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      // Переход на другой экран после 5 секунд
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => WellcomPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7165D6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 129.536,
              height: 129.518,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/initSate.png',
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Medicina App',
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
        ],
      ),
    );
  }
}
