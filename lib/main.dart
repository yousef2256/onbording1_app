import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onbording_app/core/routes/app_routers.dart';
import 'package:onbording_app/core/routes/routes.dart';
import 'package:onbording_app/core/theme/app/darck_theam.dart';
import 'package:onbording_app/core/theme/app/wghite_theam.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Onbording app',
        theme: lightetheme,
        darkTheme: darcktheme,
        initialRoute: Routs.SignInPage,
        onGenerateRoute: appRouter.generateRourer,
      ),
    );
  }
}
