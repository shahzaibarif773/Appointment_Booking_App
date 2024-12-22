import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../models/DoctorModel.dart';

class  PatientAppointment extends StatelessWidget {
  const PatientAppointment ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        margin: EdgeInsets.only(left : 16.sp,right: 16.sp,top: 30.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'See you today',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 17.sp),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
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
                              imageBuilder: (context, imageProvider) =>
                                  Padding(
                                    padding:
                                    EdgeInsets.only(left: 12.sp, top: 17.sp),
                                    child: Container(
                                      width: 22.0.w,
                                      height: 11.0.h,
                                      decoration: BoxDecoration(
                                        // shape: BoxShape.circle,
                                        borderRadius:
                                        BorderRadius.circular(15.sp),
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
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
                                SizedBox(height: 3.h,),
                                Row(
                                  children: [
                                    Text(
                                      doc[index].date,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(width: 16.w,),
                                    Text(
                                      doc[index].startTime,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ), Text(
                                      '-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ), Text(
                                      doc[index].endTime,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(width: 0.5.w,),
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
                }, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 2.h,);
              },),
          SizedBox(height: 2.h,)
            ],
          ),
        ),
      ),
    );

  }
}
