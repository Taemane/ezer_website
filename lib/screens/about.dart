import 'package:ezer_website/constants/strings.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const routeName = "/about";

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final appBar = Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      color: const Color.fromARGB(255, 199, 199, 199),
      height: size.height * 0.08,
      child: Row(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 20,
                  child: Text(
                    'E',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Ezer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 30),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(privacy);
                  },
                  child: const Text(
                    'Privacy',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              appBar,
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * .2),
                height: size.height * .2,
                child: const Center(
                  child: Text(
                    'About',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 450) {
                    return buildMobile(size);
                  } else {
                    return buildDesktop(size);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDesktop(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .15),
      child: Column(
        children: const [
          Text(
              "Ezer is the revolutionary mobile app that gives parents peace of mind by keeping them informed about their children's whereabouts in real-time."),
          SizedBox(height: 8),
          Text(
              "With Ezer, you'll never have to worry about whether your child made it to school or home safely. As soon as your child is picked up or dropped off by the transport, you'll receive an instant SMS notification with their exact location. This means you'll always know where your child is and when they've arrived safely."),
          SizedBox(height: 8),
          Text(
              "Ezer is more than just a location tracker. It's also a security tool that minimizes the risk of delayed awareness of a child security incident. With real-time access to your child's location, you'll be able to respond quickly in case of an emergency."),
          SizedBox(height: 8),
          Text(
              "Ezer is easy to use and is available on both iOS and Android platforms. All you need to do is download the app and register your child's transport details. From then on, you'll receive instant SMS notifications every time your child is picked up or dropped off."),
          SizedBox(height: 8),
          Text(
              "Don't wait until something happens to your child before you act. Download Ezer today and give yourself and your child the protection they deserve."),
          SizedBox(height: 8),
          Text(
              "Ezer is the perfect app for busy parents who want to ensure their children's safety and well-being. Try Ezer today and experience the peace of mind that comes with knowing your child is safe and sound."),
          SizedBox(height: 8),
          Text(
              "(Call to Action) Download Ezer now from the App Store or Google Play and start receiving real-time notifications about your children's whereabouts today!"),
        ],
      ),
    );
  }

  Container buildMobile(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .05),
      child: Column(
        children: const [
          Text(
              "Ezer is the revolutionary mobile app that gives parents peace of mind by keeping them informed about their children's whereabouts in real-time."),
          SizedBox(height: 8),
          Text(
              "With Ezer, you'll never have to worry about whether your child made it to school or home safely. As soon as your child is picked up or dropped off by the transport, you'll receive an instant SMS notification with their exact location. This means you'll always know where your child is and when they've arrived safely."),
          SizedBox(height: 8),
          Text(
              "Ezer is more than just a location tracker. It's also a security tool that minimizes the risk of delayed awareness of a child security incident. With real-time access to your child's location, you'll be able to respond quickly in case of an emergency."),
          SizedBox(height: 8),
          Text(
              "Ezer is easy to use and is available on both iOS and Android platforms. All you need to do is download the app and register your child's transport details. From then on, you'll receive instant SMS notifications every time your child is picked up or dropped off."),
          SizedBox(height: 8),
          Text(
              "Don't wait until something happens to your child before you act. Download Ezer today and give yourself and your child the protection they deserve."),
          SizedBox(height: 8),
          Text(
              "Ezer is the perfect app for busy parents who want to ensure their children's safety and well-being. Try Ezer today and experience the peace of mind that comes with knowing your child is safe and sound."),
          SizedBox(height: 8),
          Text(
              "(Call to Action) Download Ezer now from the App Store or Google Play and start receiving real-time notifications about your children's whereabouts today!"),
        ],
      ),
    );
  }
}
