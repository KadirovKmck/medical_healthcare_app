import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/wellcom_page.dart';

void main(List<String> args) {
  runApp(MedicalIlnas());
}

class MedicalIlnas extends StatelessWidget {
  const MedicalIlnas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WellcomPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
