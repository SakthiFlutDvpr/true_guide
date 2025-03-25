import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:true_guide/presentation/screens/dashboard/bloc/dashboard_bloc.dart';
import 'package:true_guide/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(360, 690),
      builder:
          (context, child) => MultiBlocProvider(
            providers: [BlocProvider(create: (context) => DashboardBloc())],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,

              routerConfig: AppRoutes().routes,
            ),
          ),
    );
  }
}
