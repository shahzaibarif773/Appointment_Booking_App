import 'package:flutter/material.dart';

import 'screens/Patient/PatientHome.dart';
import 'screens/Doctor/Home.dart';
import 'screens/RollSelection.dart';
import 'screens/SplashScreen.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/SplashScreen': (context) => const Splashscreen(),
    '/PatientHome': (context) => const PatientHome(),
    '/DoctorHome': (context) => const DoctorHome(),
    '/RollSelection': (context) => const RollSelection(),


  };
}