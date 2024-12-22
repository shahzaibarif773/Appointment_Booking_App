import 'package:appointment_booking1/Widget/CustomButton.dart';
import 'package:appointment_booking1/Widget/Navigation.dart';
import 'package:appointment_booking1/screens/SignUp.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Loginpage extends StatefulWidget {
  final bool ispatient;
  const Loginpage({super.key, required this.ispatient});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isobsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left :22.sp,right: 22.sp,top: 22.sp),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 1.h,),
              Text('Welcome back',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45 ,fontSize: 20.sp),),
              SizedBox(height: 1.h,),
              Container(
                // height: 20.h,
                // width: 70.w,
                child: Image.asset('assets/img/surface1.png',fit: BoxFit.fill,),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  // SizedBox(width: 2.w,),
                  Text('Email',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  focusColor: Colors.red,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.transparent),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  hintText: 'Enter your Email',
                  hintStyle: const TextStyle(color: Colors.black26),
                  fillColor: Colors.black12,
                  filled: true,
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  // SizedBox(width: 2.w,),
                  Text('password',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),),
                ],
              ),
              SizedBox(height: 1.h,),
              TextField(
                controller: passwordController,
                obscureText: _isobsecure,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline,color: Colors.black26,),
                  suffixIcon:  IconButton(
                    icon : Icon(_isobsecure ? Icons.visibility : Icons.visibility_off,color: Colors.black26,),
                    onPressed: () {
                      setState(() {
                        _isobsecure =! _isobsecure;
                      });

                    },),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.sp),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  focusColor: Colors.red,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.transparent),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.black26),
                  fillColor: Colors.black12,
                  filled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 55.sp),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.redAccent),
                    )),
              ),
              SizedBox(height: 1.h,),
              CustomButton(text: 'Login', onPressed: (){
                Get.offAll(Navigation(ispatient: widget.ispatient,));

              }),
              Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SignUp(ispatient: true,));
                      },
                      child: const Text(
                        'SignUp?',
                        style: TextStyle(color: Colors.redAccent),
                      )),
                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 0.2.h,
                    width: 20.w,
                    color: Colors.black26,
                  ),

                   Text(
                    'Or Continue With',
                    style: TextStyle(color: Colors.black26,fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),

                  Container(
                    height: 0.2.h,
                    width: 20.w,
                    color: Colors.black26,
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: const CircleBorder(),
                      child: Icon(
                        Icons.facebook,
                        size: 28.sp,
                        color: Colors.blue,
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: 12.w,
                  ),
                  SizedBox(height: 7.h,
                    child: CachedNetworkImage(
                      imageUrl: "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          CircularProgressIndicator(value: downloadProgress.progress),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  FloatingActionButton(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: const CircleBorder(),
                      child: Icon(
                        Icons.apple,
                        size: 30.sp,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
