import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytask1/view/pages/f035/f035.dart';
import 'package:mytask1/view/pages/f036/f036.dart';
import 'package:mytask1/view/pages/f037/f037.dart';
import 'package:mytask1/view/pages/f041/f041.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),

            ],
            breakpointsLandscape: [
              const ResponsiveBreakpoint.resize(560, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(812, name: MOBILE),
              const ResponsiveBreakpoint.resize(1024, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1120,
                  name: TABLET),
            ]);
      },
      home:  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:F037(),
      ),
    );
  }
}

