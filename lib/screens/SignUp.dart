import 'package:appointment_booking1/Widget/CustomButton.dart';
import 'package:appointment_booking1/Widget/Navigation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class SignUp extends StatefulWidget {
  final bool ispatient;
  const SignUp({super.key, required this.ispatient});

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
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
                      borderSide: BorderSide(
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
                      borderSide: BorderSide(
                          color: Colors.transparent),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.black26),
                  fillColor: Colors.black12,
                  filled: true,
                ),
              ),
              SizedBox(height: 4.5.h,),

              CustomButton(text: 'Login', onPressed: (){
                 Get.offAll(Navigation(ispatient: widget.ispatient,));
              }),
              SizedBox(height: 6.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.2.h,
                    width: 20.w,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Or Continue With',
                    style: TextStyle(color: Colors.black26,fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    height: 0.2.h,
                    width: 20.w,
                    color: Colors.black26,
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
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
                      errorWidget: (context, url, error) => Icon(Icons.error),
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}
