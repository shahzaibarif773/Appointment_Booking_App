import 'package:appointment_booking1/Theme/Colors.dart';
import 'package:appointment_booking1/screens/Doctor/Appointments.dart';
import 'package:appointment_booking1/screens/Doctor/Home.dart';
import 'package:appointment_booking1/screens/Patient/Appointments.dart';
import 'package:appointment_booking1/screens/Patient/Notifications.dart';
import 'package:appointment_booking1/screens/Patient/PatientHome.dart';
import 'package:appointment_booking1/screens/Doctor/Profile.dart';
import 'package:appointment_booking1/screens/Patient/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Navigation extends StatefulWidget {
  final bool ispatient;
  const Navigation({super.key, required this.ispatient});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  List DoctorScreenList = [
    const DoctorHome(),
    const DoctorAppointments(),
    const Notifications(),
    const DoctorProfile(),
  ];
  List PatientScreenList = [
    const PatientHome(),
    const PatientAppointment(),
    const Notifications(),
    const PatientProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (widget.ispatient)
            ? PatientScreenList[_currentIndex]
            : DoctorScreenList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          iconSize: 22.sp,
          selectedFontSize: 12.sp,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.yellow,
          unselectedItemColor: Tcolors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Tcolors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: 'Appointments',
                icon: Icon(
                  CupertinoIcons.doc_text_fill,
                )),
            BottomNavigationBarItem(
                label: 'Notifications', icon: Icon(Icons.notifications)),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.person,
                )),
          ],
        ));
  }
}
