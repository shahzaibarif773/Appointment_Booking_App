import 'package:appointment_booking1/Theme/Colors.dart';
import 'package:appointment_booking1/Widget/CustomButton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:intl/intl.dart';

class Booknow extends StatelessWidget {
  final DateTime date;
  final String time;
  final String url;
  final String name;
  final String address;
  final String specialization;
  const Booknow(
      {super.key,
      required this.date,
      required this.time,
      required this.name,
      required this.address,
      required this.specialization,
      required this.url});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMM dd, yyyy').format(date);
    return Scaffold(
      // appBar: ,
      body: Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 32.sp),
          height: double.infinity.h,
          width: double.infinity.w,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(left: 14.sp, right: 14.sp, top: 32.sp),
              child: Container(
                height: 15.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.sp),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: url,
                          fit: BoxFit.fill,
                          imageBuilder: (context, imageProvider) => Padding(
                            padding: EdgeInsets.only(left: 12.sp, top: 17.sp),
                            child: Container(
                              width: 22.0.w,
                              height: 11.0.h,
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15.sp),
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 18.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Specialties :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                      fontSize: 15.sp),
                                ),
                                Text(
                                  specialization,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '📌',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                      fontSize: 14.sp),
                                ),
                                Text(
                                  address,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  'Schedule an appointment',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    icon: Icon(
                      Icons.edit_note,
                      size: 22.sp,
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.sp, right: 14.sp, top: 12.sp),
              child: Container(
                height: 15.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.sp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 19.sp, left: 18.sp, right: 18.sp, bottom: 15.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Date:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(formattedDate),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.sp, right: 18.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Time:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(time),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15.sp, left: 18.sp, right: 18.sp),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Duration:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('30 Minutes'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomButton(
                text: 'Book Now', onPressed: () => buildShowDialog(context))
          ]),
        ),
        Positioned(
            top: 22.sp,
            left: 10.sp,
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_outlined))),
      ]),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            // shadowColor: Colors.black,
            backgroundColor: Colors.black38,
            content: SizedBox(
              height: 70.h,
              width: 75.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                      height: 20.h,
                      child: Image.asset(
                        'assets/img/4.webp',
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    'Congratulations! you have successfully made an appointment. Thanks for using our app',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                 CustomButton(text: 'Return To Home', onPressed: (){
                   Get.back();
                 })
                ],
              ),
            ),
          );
        });
  }
}
