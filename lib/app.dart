import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/controller_binder.dart';
import 'package:rapidofix/route/route_names.dart';
import 'package:rapidofix/route/routes.dart';
import 'package:rapidofix/theme/theme.dart';

class RapidoFixAPP extends StatelessWidget {
  const RapidoFixAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rapido Fix',
      theme: lightTheme,
      getPages: Routes.pages,
      initialRoute: RouteNames.splashScreen,
      initialBinding: ControllerBinder(),
    );
  }
}
