import 'package:appointment_booking1/screens/Patient/ProfileEdit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Theme/Colors.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 70.sp,top: 16.sp),
                child: IconButton(onPressed: (){
                  logoutdialogue(context);
                }, icon: Icon(Icons.power_settings_new_rounded,size: 28.sp,)),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://wallpapers.com/images/hd/cool-profile-picture-minion-13pu7815v42uvrsg.jpg',
                  ),
                  radius: 56,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Dr william Johns',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              Text(
                'Example123@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black54),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15.sp)),
                  width: 80.w,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rue No 8 Clinique No5 en facde du chemin Wing',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                  )),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.sp),
                  color: const Color(0xff1d69cc),
                ),
                height: 4.h,
                child: TextButton(onPressed: () {
                  Get.to(PatientProfileEdit());
                }, child: const Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> logoutdialogue(BuildContext context) {
    return showModalBottomSheet(
        showDragHandle: true,
        context: context,
        builder: (builder) {
          shape:
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(Tradius.widgetRadius),
            ),
          );
          return Container(
            //color: Colors.white12,
            height: 28.h,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Logout',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.redAccent)),
                SizedBox(
                  height: 1.5.h,
                ),
                const Text('Are you sure you want to logout?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 3.5.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: 80.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:

                          WidgetStateProperty.all(Tcolors.blue)),
                      onPressed: () async {
                        Navigator.pushReplacementNamed(context, '/SplashScreen');
                      },
                      child: const Text(
                        'Yes,Logout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: 80.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          WidgetStateProperty.all(Tcolors.white)),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          );
        });
  }
}
