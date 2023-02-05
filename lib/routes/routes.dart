import 'package:ezer_website/screens/about.dart';
import 'package:ezer_website/screens/privacy.dart';
import 'package:flutter/material.dart';

import 'package:ezer_website/constants/strings.dart';

class RouteGenerator {
  // Define named routes to use in other classes when routing
  Route<dynamic> generateRoute(RouteSettings settings) {
    // Switching between routes
    switch (settings.name) {
      case landingPage:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case about:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case privacy:
        return MaterialPageRoute(builder: (_) => const PrivacyPage());
      default:
        return _errorRoute();
    }
  }
}

// Implementation of the default error route
Route<dynamic> _errorRoute() {
  print('Routes: On route error');
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('ERROR: Routing error occurred'),
      ),
    );
  });
}
