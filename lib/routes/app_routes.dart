import 'package:go_router/go_router.dart';
import 'package:true_guide/presentation/screens/category/category%20details/category_detail_screen.dart';
import 'package:true_guide/presentation/screens/category/category_screen.dart';
import 'package:true_guide/presentation/screens/category/contact%20details/contact_screen.dart';
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
  static String categoryScreen = '/category_screen';
  static String categroyDetailScreen = '/category_detail_screen';
  static String contactScreen = '/contact_screen';

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
      GoRoute(
        path: categoryScreen,
        name: categoryScreen,
        builder: (context, state) => CategoryScreen(),
      ),
      GoRoute(
        path: categroyDetailScreen,
        name: categroyDetailScreen,
        builder: (context, state) => CategoryDetailScreen(),
      ),
      GoRoute(
        path: contactScreen,
        name: contactScreen,
        builder: (context, state) => ContactScreen(),
      ),
    ],
  );
}
