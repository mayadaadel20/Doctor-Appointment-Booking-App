import 'package:doctor_online/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/doctor_info.dart';

class AppointScreen extends StatelessWidget {
  final DoctorInfo doctor;

  AppointScreen({required this.doctor});
  List<DoctorInfo> doctors = [
DoctorInfo(name: "Dr Aya", image: "images/doctor1.jpg", spe: "Surgeon", rate: "4.9"),
DoctorInfo(name: "Dr Amal", image: "images/doctor2.jpg", spe: "Cardiologist", rate: "4.3"),
DoctorInfo(name: "Dr Hassan", image: "images/doctor3.jpg", spe: "Dentist", rate: "4.1"),
DoctorInfo(name: "Dr Mohammad", image: "images/doctor4.jpg", spe: "Emergency Doctor", rate: "4.8"),
DoctorInfo(name: "Dr Mostafa", image: "images/doctor5.jpg", spe: "Gynecologist", rate: "4.0"),
];

  List docName = [
    "Dr Aya",
    "Dr Aml",
    "Dr Hassan",
    "Dr Mohammad",
    "Dr Mostafa",
  ];

  List speName = [
    "Surgeon",
    "Cardiologist",
    "Dentist",
    "Emergency Doctor",
    "Gynecologist",
  ];

  List Rate = [
    "4.9",
    "4.3",
    "4.1",
    "4.8",
    "4.0",
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Material(
            color: Color(0xFFD9E4EE),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(doctor.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          pColor.withOpacity(0.9),
                          pColor.withOpacity(0),
                          pColor.withOpacity(0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF2F8FF),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: sdColor,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Icon(Icons.arrow_back,
                                        color: pColor, size: 28),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: sdColor,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: pColor,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Patients",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: wColor,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "1.8k",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: wColor,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Experience",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: wColor,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "10 yr",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: wColor,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Rating",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: wColor,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    Rate[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: wColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        docName[index],
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: pColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(MdiIcons.heartPulse,
                              color: Colors.red, size: 28),
                          SizedBox(width: 5),
                          Text(
                            speName[index],
                            style: TextStyle(
                              fontSize: 17,
                              color: bColor.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: bColor.withOpacity(0.6),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Book Date",
                        style: TextStyle(
                          fontSize: 18,
                          color: bColor.withOpacity(0.6),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 70,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 8),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 25),
                                decoration: BoxDecoration(
                                  color:
                                      index == 1 ? pColor : Color(0xFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: sdColor,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${index + 8}",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: index == 1
                                            ? wColor
                                            : bColor.withOpacity(0.6),
                                      ),
                                    ),
                                    Text(
                                      "Jul",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: index == 1
                                            ? wColor
                                            : bColor.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Book Time",
                        style: TextStyle(
                          fontSize: 18,
                          color: bColor.withOpacity(0.6),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 60,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 8),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                decoration: BoxDecoration(
                                  color:
                                      index == 2 ? pColor : Color(0xFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: sdColor,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "${index + 8} 00 AM",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: index == 2
                                          ? wColor
                                          : bColor.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Material(
                        color: pColor,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Book Appointment",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: wColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
