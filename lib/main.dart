import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 600),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
