import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                ),
                title: Text(
                  'Dr. Doctor Name',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                subtitle: Text('Profile'),
              ),
              Divider(
                height: 50,
                color: Colors.black,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100, shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade100, shape: BoxShape.circle),
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.indigo,
                    size: 35,
                  ),
                ),
                title: Text(
                  'Privacy',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.green.shade100, shape: BoxShape.circle),
                  child: Icon(
                    Icons.settings_suggest_outlined,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
                title: Text(
                  'General',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.orange.shade100, shape: BoxShape.circle),
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.orange,
                    size: 35,
                  ),
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              Divider(
                height: 40,
                color: Colors.black,
              ),
              ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.redAccent.shade100, shape: BoxShape.circle),
                  child: Icon(
                    Icons.logout_outlined,
                    color: Colors.redAccent,
                    size: 35,
                  ),
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                trailing: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
