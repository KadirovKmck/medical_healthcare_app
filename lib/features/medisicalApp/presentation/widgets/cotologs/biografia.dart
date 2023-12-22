import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/features/medisicalApp/presentation/pages/apointment_page.dart';

class BiographyContainerWidgets extends StatefulWidget {
  BiographyContainerWidgets({
    Key? key,
    this.title,
    this.assetName,
    this.yearsExp,
    this.proset,
    this.patientStories,
    this.time,
  }) : super(key: key);
  final String? title;
  final String? assetName;
  final String? yearsExp;
  final String? proset;
  final String? patientStories;
  final String? time;
  @override
  State<BiographyContainerWidgets> createState() =>
      _BiographyContainerWidgetsState();
}

class _BiographyContainerWidgetsState extends State<BiographyContainerWidgets> {
  bool isRedFavorit = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 380,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Row(
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.assetName!))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik'),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isRedFavorit = !isRedFavorit;
                            });
                          },
                          icon: isRedFavorit
                              ? Icon(Icons.favorite, color: Colors.grey)
                              : Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Tooths Dentist',
                      style: TextStyle(
                          color: Color(0xff7165d6),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${widget.yearsExp} Years experience ',
                      style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 12,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff7165d6),
                          radius: 5,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${widget.proset}%',
                          style: TextStyle(
                              color: Color(0xff677294),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff7165d6),
                          radius: 5,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${widget.patientStories} Patient Stories',
                          style: TextStyle(
                              color: Color(0xff677294),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Available ',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7165d6)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${widget.time} AM tomorrow ',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff677294)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 85,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApointmentPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff7165d6)),
                    width: 115,
                    height: 40,
                    child: Center(
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
