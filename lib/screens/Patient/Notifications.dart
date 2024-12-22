import 'package:appointment_booking1/models/DoctorModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 30.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Upcoming appointments',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 17.sp),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Notificationdate.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.sp),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 2.sp,right: 2.sp),
                      child: RichText(
                        text: TextSpan(
                          style:  TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text:
                                    Notificationdate[index].text),
                            TextSpan(
                              text: Notificationdate[index].date,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 18.sp),
                    child: Divider(
                      height: 1,
                    ),
                  );
                },
              ),
          SizedBox(height: 2.h,),
            ],
          ),
        ),
      ),
    );
  }
}
