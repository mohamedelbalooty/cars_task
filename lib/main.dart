import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'utils/routes/routes.dart';

void main() {
  runApp(const CarsTask());
}

class CarsTask extends StatelessWidget {
  const CarsTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Carts task',
        initialRoute: Routes.initialRoute,
        getPages: Routes.routes,
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
      ),
    );
  }
}
