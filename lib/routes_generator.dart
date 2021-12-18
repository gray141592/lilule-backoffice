import 'package:admin/screens/task/task.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/dashboard/dashboard.dart';
import 'package:admin/screens/transactions/transactions.dart';
import 'package:admin/layouts/dashboard_screen_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => DashboardScreenView(
                  pageTitle: 'Dashboard',
                  pageChild: DashboardScreen(),
                ));
      case '/transactions':
        return MaterialPageRoute(
          builder: (_) => DashboardScreenView(
            pageTitle: 'Transactions',
            pageChild: TransactionsScreen(),
          ),
        );
      case '/task':
        return MaterialPageRoute(
          builder: (_) => DashboardScreenView(
            pageTitle: 'Task',
            pageChild: TaskScreen(),
          ),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Something went wrong'),
        ),
        body: Center(
          child: Text('We are terribly sorry but we can\'t process your request!'),
        ),
      );
    });
  }
}
