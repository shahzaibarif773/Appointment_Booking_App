
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, '/RollSelection');
    });  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 1.h,),
          Container(
            height: 40.h,
            width: double.infinity,
            child: Image.asset('assets/img/ation.png',fit: BoxFit.fill,),
          ),
          SizedBox(height: 8.h,),
          Text(
            'Your health, one click away ',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.5),
                fontSize: 18.sp),
          ),
          SizedBox(height: 7.h,),
          Container(
            height: 40.h,
            width: double.infinity,
            child: Image.asset('assets/img/ww.png',fit: BoxFit.fill,),
          ),
        ],

      ),
    );
  }
}
