import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../models/DoctorModel.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({super.key});

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black12,
      body: Container(
        margin: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 22.sp),
        height: double.infinity.h,
        width: double.infinity.w,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Dr william Johns',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 12.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.sp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.w,
                            ),
                            Icon(
                              CupertinoIcons.doc_text_fill,
                              size: 26.sp,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '67',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green,
                                  fontSize: 24.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.3.h,
                        ),
                        Text(
                          'Total number of appointments',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Container(
                    height: 12.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.sp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.w,
                            ),
                            Icon(
                              CupertinoIcons.clock_fill,
                              size: 26.sp,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '18',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.redAccent,
                                  fontSize: 24.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.3.h,
                        ),
                        Text(
                          'Appointments waiting',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upcoming Patients',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 17.sp),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Update Slots',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                          fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              ListView.separated(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: doc.length,
                itemBuilder: (context, index) {
                  return Container(
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
                              imageUrl: doc[index].picture,
                              fit: BoxFit.fill,
                              imageBuilder: (context, imageProvider) => Padding(
                                padding:
                                    EdgeInsets.only(left: 12.sp, top: 17.sp),
                                child: Container(
                                  width: 22.0.w,
                                  height: 11.0.h,
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(15.sp),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover),
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
                                      doc[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: 18.sp),
                                    ),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Container(
                                        height: 4.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.sp),
                                        ),
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                elevation:
                                                    const WidgetStatePropertyAll(
                                                        0),
                                                backgroundColor:
                                                    WidgetStatePropertyAll(
                                                        Colors.redAccent
                                                            .shade200)),
                                            onPressed: () {},
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Disease :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                          fontSize: 15.sp),
                                    ),
                                    Text(
                                      doc[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      doc[index].date,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Text(
                                      doc[index].startTime,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                    Text(
                                      '-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                    Text(
                                      doc[index].endTime,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(
                                      width: 0.5.w,
                                    ),
                                    Text(
                                      doc[index].ampm,
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
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
