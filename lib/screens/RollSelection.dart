import 'package:appointment_booking1/Widget/CustomButton.dart';
import 'package:appointment_booking1/screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RollSelection  extends StatelessWidget {
  const RollSelection ({super.key});

  @override
  Widget build(BuildContext context) {
    bool patient = true;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 6.h,),
          Text(
            'Glade to see you',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
                fontSize: 20.sp),
          ),
          Text(
            'Please select your roll',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
                fontSize: 16.sp),
          ),
          SizedBox(height: 6.h,),
          Container(
            height: 40.h,
            width: double.infinity,
            child: Image.asset('assets/img/ation.png',fit: BoxFit.fill,),
          ),
          SizedBox(height: 18.h,),
          CustomButton(text: 'Patient', onPressed: (){
            Get.to(Loginpage(ispatient: true,));
          }),
          SizedBox(height: 4.h,),
          CustomButton(text: 'Doctor', onPressed: (){
            Get.to(Loginpage(ispatient: false,));
          }),


        ],
      ),

      );
  }
}
