import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/request_form_screen.dart';
import 'screens/admin_dashboard_screen.dart';
import 'screens/approval_screen.dart';
import 'screens/error_screen.dart';
import 'models/holiday_request.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/request-form':
        return MaterialPageRoute(builder: (_) => RequestFormScreen());
      case '/admin-dashboard':
        return MaterialPageRoute(builder: (_) => AdminDashboardScreen());
      case '/approval':
        if (args is HolidayRequest) {
          return MaterialPageRoute(
            builder: (_) => ApprovalScreen(request: args),
          );
        } else {
          return MaterialPageRoute(
            builder: (_) => ErrorScreen(message: 'Invalid request data'),
          );
        }
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
