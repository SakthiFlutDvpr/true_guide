import 'package:go_router/go_router.dart';
import 'package:true_guide/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:true_guide/presentation/screens/login/login_screen.dart';

class AppRoutes {
  static AppRoutes instance = AppRoutes._internal();
  AppRoutes._internal();

  factory AppRoutes() {
    return instance;
  }
  static String loginScreen = '/login_screen';
  static String dashboardScreen = '/dashboard_screen';

  final GoRouter routes = GoRouter(
    initialLocation: dashboardScreen,
    routes: [
      GoRoute(
        path: loginScreen,
        name: loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: dashboardScreen,
        name: dashboardScreen,
        builder: (context, state) => DashboardScreen(),
      ),
    ],
  );
}
