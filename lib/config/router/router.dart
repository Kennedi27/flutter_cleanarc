import 'package:clean_arc/presentation/pages/authentications/login.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/booking/booking_detail.dart';
import '../../presentation/pages/booking/destination_detail.dart';
import '../../presentation/pages/favorite/favoritepage.dart';
import '../../presentation/pages/home/homepage.dart';
import '../../presentation/pages/profile/profilepage.dart';
import '../../presentation/pages/transaction/transactionpage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/transaction':
        return MaterialPageRoute(builder: (_) => const TransactionPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      case '/favorite':
        return MaterialPageRoute(builder: (_) => const FavoritePage());
      case '/detinationdetail':
        return MaterialPageRoute(builder: (_) => const DestinationDetailPage());
      case '/bookingdetail':
        return MaterialPageRoute(builder: (_) => const BookingDetailPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text('Error page')),
      );
    });
  }
}
