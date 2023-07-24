import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/coledar_page.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/home_page.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/messeges_page.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/schedule_page.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/settings_page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _selectedInhdex = 0;
  final _screens = [
    HomePage(),
    MessegesPage(),
    SchedulePage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedInhdex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedInhdex,
          onTap: (index) {
            setState(() {
              _selectedInhdex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_rounded), label: 'Messeges'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
