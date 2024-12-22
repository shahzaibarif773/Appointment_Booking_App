import 'package:appointment_booking1/Theme/Colors.dart';
import 'package:appointment_booking1/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PatientProfileEdit extends StatelessWidget {
  PatientProfileEdit({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black54),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                decoration: InputDecoration(
                    hoverColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    focusColor: Colors.black,
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    hintStyle: const TextStyle(color: Colors.black26),
                    fillColor: Colors.black12,
                    filled: true),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Text(
                    'Age',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black54),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    hintText: 'age',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    hintStyle: const TextStyle(color: Colors.black26),
                    fillColor: Colors.black12,
                    filled: true),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black54),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    hintStyle: const TextStyle(color: Colors.black26),
                    fillColor: Colors.black12,
                    filled: true),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black54),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                    hintText: 'address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    hintStyle: const TextStyle(color: Colors.black26),
                    fillColor: Colors.black12,
                    filled: true),
              ),
              SizedBox(
                height: 29.h,
              ),
              CustomButton(
                  text: 'Save', onPressed: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }
}
