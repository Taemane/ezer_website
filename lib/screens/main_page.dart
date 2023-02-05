import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.1,
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset('assets/ezer_logo.jpg'),
                    Text('Ezer'),
                  ],
                ),
                Row(
                  children: [],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
