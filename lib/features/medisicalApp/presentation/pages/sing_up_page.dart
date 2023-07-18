import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/login_page.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

bool passTogle = true;

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: SafeArea(
                child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/d5.jpg'),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Your Name'),
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Your Email'),
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Your Phone Number'),
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: passTogle ? true : false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Your Email Password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (passTogle == true) {
                          passTogle = false;
                        } else {
                          passTogle = true;
                        }
                        setState(() {});
                      },
                      child: passTogle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You have olredy account?",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff7165D6),
                          fontWeight: FontWeight.w500),
                    ))
              ],
            )
          ],
        ))),
      ),
    );
  }
}
