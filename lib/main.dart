import 'package:ezer_website/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    router: RouteGenerator(),
  ));
}

class MyApp extends StatelessWidget {
  final RouteGenerator router;

  const MyApp({required this.router, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ezer',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      onGenerateRoute: router.generateRoute,
    );
  }
}
