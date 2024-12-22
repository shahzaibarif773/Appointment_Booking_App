import 'package:appointment_booking1/Theme/Colors.dart';
import 'package:appointment_booking1/screens/Patient/DoctorDetail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../models/PatientModel.dart';

class PatientHome extends StatefulWidget {
  const PatientHome({super.key});

  @override
  State<PatientHome> createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: Colors.black12,
      body: Container(
        margin: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 22.sp),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                'william Morise',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: Tsize.large.sp),
              ),
              const Text(
                'Glad to see you',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black26,
                    fontSize: Tsize.medium),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildSearchAnchor(),
              ),
              //Doctor speciality.......
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Doctor Specialty',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 17.sp),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Tcolors.blue,
                          fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          width: 12.w,
                          decoration: const BoxDecoration(
                              color: Tcolors.white, shape: BoxShape.circle),
                          child: ImageIcon(
                            const AssetImage('assets/img/Neirology.png'),
                            color: Tcolors.icon,
                            size: Tsize.smallicon.sp,
                          )),
                      SizedBox(
                        height: Tsize.smallboxh.h,
                      ),
                      Text(
                        'neurology',
                        style: TextStyle(fontSize: Tsize.small.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    width: Tsize.smallboxw.w,
                  ),
                  Column(
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          width: 12.w,
                          decoration: const BoxDecoration(
                              color: Tcolors.white, shape: BoxShape.circle),
                          child: ImageIcon(
                            const AssetImage('assets/img/Pedriatic.png'),
                            color: Tcolors.icon,
                            size: Tsize.smallicon.sp,
                          )),
                      SizedBox(
                        height: Tsize.smallboxh.h,
                      ),
                      Text(
                        'Pedriatic',
                        style: TextStyle(fontSize: Tsize.small.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    width: Tsize.smallboxw.w,
                  ),
                  Column(
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          width: 12.w,
                          decoration: const BoxDecoration(
                              color: Tcolors.white, shape: BoxShape.circle),
                          child: ImageIcon(
                            const AssetImage('assets/img/Neirology.png'),
                            color: Tcolors.icon,
                            size: Tsize.smallicon.sp,
                          )),
                      SizedBox(
                        height: Tsize.smallboxh.h,
                      ),
                      Text(
                        'Radiologys',
                        style: TextStyle(fontSize: Tsize.small.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    width: Tsize.smallboxw.w,
                  ),
                  Column(
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          width: 12.w,
                          decoration: const BoxDecoration(
                              color: Tcolors.white, shape: BoxShape.circle),
                          child: ImageIcon(
                            const AssetImage('assets/img/Doctor.png'),
                            color: Tcolors.doctoricon,
                            size: Tsize.smallicon.sp,
                          )),
                      SizedBox(
                        height: Tsize.smallboxh.h,
                      ),
                      Text(
                        'Doctor',
                        style: TextStyle(fontSize: Tsize.small.sp),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Doctor Recommendation',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 17.sp),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Tcolors.blue,
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
                itemCount: patientModel.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(Doctordetail(
                          price: patientModel[index].price,
                          ImageUrl: patientModel[index].picture,
                          name: patientModel[index].name,
                          address: patientModel[index].address,
                          specialization: patientModel[index].specialization));
                    },
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
                                imageUrl: patientModel[index].picture,
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
                                        patientModel[index].name,
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
                                        patientModel[index].specialization,
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
                                        patientModel[index].address,
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
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  SearchAnchor buildSearchAnchor() {
    return SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
      return SearchBar(
        backgroundColor: const WidgetStatePropertyAll(Colors.black12),
        elevation: const WidgetStatePropertyAll(0),
        controller: controller,
        padding: const WidgetStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0)),
        onTap: () {
          controller.openView();
        },
        onChanged: (_) {
          controller.openView();
        },
        leading: const Icon(Icons.search),
        trailing: <Widget>[
          Tooltip(
            message: '',
            child: IconButton(
              // isSelected: isDark,
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: Tcolors.blue,
                size: Tsize.smallicon,
              ),
            ),
          )
        ],
      );
    }, suggestionsBuilder: (BuildContext context, SearchController controller) {
      return List<ListTile>.generate(5, (int index) {
        final String item = 'item $index';
        return ListTile(
          title: Text(item),
          onTap: () {
            setState(() {
              controller.closeView(item);
            });
          },
        );
      });
    });
  }
}
