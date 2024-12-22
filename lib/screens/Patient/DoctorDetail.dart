import 'package:appointment_booking1/Theme/Colors.dart';
import 'package:appointment_booking1/Widget/CustomButton.dart';
import 'package:appointment_booking1/screens/Patient/BookNow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

class Doctordetail extends StatefulWidget {
  final String ImageUrl;
  final String name;
  final String address;
  final String price;
  final String specialization;
  const Doctordetail(
      {super.key,
      required this.ImageUrl,
      required this.name,
      required this.address,
      required this.specialization,
      required this.price});

  @override
  State<Doctordetail> createState() => _DoctordetailState();
}

class _DoctordetailState extends State<Doctordetail> {
  DateTime _selectedDate = DateTime(DateTime.april);
  final List<String> times = [
    '08:00 am',
    '08:30 am',
    '09:00 am',
    '09:30 am',
    '10:00 am',
    '10:30 am',
    '11:00 am',
    '11:30 am',
  ];

  String? selectedTime = '08:00 am';
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          margin: EdgeInsets.only(left: 16.sp, right: 16.sp, top: 22.sp),
          height: double.infinity.h,
          width: double.infinity.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: widget.ImageUrl,
                fit: BoxFit.fill,
                imageBuilder: (context, imageProvider) => Padding(
                  padding: EdgeInsets.only(left: 12.sp, top: 17.sp),
                  child: Container(
                    width: 40.0.w,
                    height: 20.0.h,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(Tradius.widgetRadius),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                ),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              SizedBox(
                height: Tsize.large,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: Tsize.large.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Specialties :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 15.sp),
                  ),
                  Text(
                    widget.specialization,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: Tsize.medium),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '📌',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: 14.sp),
                  ),
                  Text(
                    widget.address,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: Tsize.medium.sp),
                  ),
                ],
              ),
              Text(
                '${widget.price}/ Session',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Tcolors.red,
                    fontSize: Tsize.large.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Appointment Date:',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: Tsize.smallboxh.h,
              ),
              SizedBox(
                height: 11.h,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Tcolors.blue,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                ),
              ),
              SizedBox(
                height: Tsize.smallboxh.h + 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Location Available:',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              SegmentedButtonSlide(
                selectedEntry: selectedOption,
                onChange: (selected) =>
                    setState(() => selectedOption = selected),
                entries: const [
                  SegmentedButtonSlideEntry(
                    label: "Matin",
                  ),
                  SegmentedButtonSlideEntry(
                    label: "Apres-midi",
                  ),
                  SegmentedButtonSlideEntry(
                    label: "Nuit",
                  ),
                ],
                colors: SegmentedButtonSlideColors(
                  barColor: Colors.white,
                  backgroundSelectedColor: Tcolors.blue,
                ),
                margin: EdgeInsets.all(8.sp),
                height: 5.h,
                borderRadius: BorderRadius.circular(22.sp),
                selectedTextStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Tcolors.white,
                ),
                unselectedTextStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.sp,
                ),
                child: Wrap(
                  spacing: 10.0,
                  // runSpacing: 2.0,
                  children: times.map((time) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Tradius.widgetRadius),
                      ),
                      child: ChoiceChip(
                        showCheckmark: false,
                        side: BorderSide.none,
                        label: Text(time),
                        selected: selectedTime == time,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedTime = selected ? time : null;
                          });
                        },
                        selectedColor: Tcolors.blue,
                        labelStyle: TextStyle(
                          color: selectedTime == time
                              ? Colors.white
                              : Colors.black,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton(text: 'Continue', onPressed: (){
                Get.to(Booknow(
                  date: _selectedDate,
                  time: selectedTime.toString().trim(),
                  name: widget.name,
                  address: widget.address,
                  specialization: widget.specialization,
                  url: widget.ImageUrl,
                ));
              })
            ],
          ),
        ),
        Positioned(
            top: 22.sp,
            left: 10.sp,
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios_outlined))),
      ]),
    );
  }
}

// class Button extends StatelessWidget {
//   const Button({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 6.h,
//       width: 60.w,
//       child: ElevatedButton(
//           style: ButtonStyle(
//               backgroundColor: WidgetStateProperty.all(Tcolors.blue)),
//           onPressed: () async {
//             Get.to(Booknow(
//               date: _selectedDate,
//               time: selectedTime.toString().trim(),
//               name: widget.name,
//               address: widget.address,
//               specialization: widget.specialization,
//               url: widget.ImageUrl,
//             ));
//           },
//           child: Text(
//             'Continue',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 17.sp,
//                 letterSpacing: 1,
//                 fontWeight: FontWeight.w700),
//           )),
//     );
//   }
// }
