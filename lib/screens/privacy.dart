import 'package:ezer_website/constants/strings.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  static const routeName = "/privacy";

  const PrivacyPage({super.key});

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
                  onPressed: () {
                    Navigator.of(context).pushNamed(about);
                  },
                  child: const Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 30),
                OutlinedButton(
                  onPressed: () {},
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              appBar,
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * .2),
                height: size.height * .2,
                child: const Center(
                  child: Text(
                    'Privacy',
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

  Container buildMobile(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .25),
      child: Column(
        children: const [
          Text(
              "Statement about Ezer Communication system which is a product of FreesTech Enterprise."),
          Text(
              "This privacy statement (“Privacy Statement”) (together with our terms of use) explains how we use any personal information we collect from you, or that you provide to us. Please read the following carefully to understand our views and practices regarding your personal information and how we will treat it. By visiting the Site, you confirm that you accept and consent to the practices described in this Privacy Statement, without limitation or qualification. If you do not accept this Privacy Statement, you are not entitled to access or use the app. These policies are subject to periodic review and any changes will be included within this section of the site."),
          SizedBox(height: 12),
          Text(
            "1. What Data do We Collect About You?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Ezer is a communication channel aimed at improving communication for schools, it does this by connecting the three stakeholders involved in a school setup, being the parent, the school the teacher and the transport/driver where necessary."),
          Text(
              "As part of the system services, we shall collect and use your personal data only for the purposes stated in this Statement. Personal information refers to any information that enables Ezer to identify you as a user."),
          Text("We shall collect and process your following information : "),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
                "1)	Names \n2)	Addresses \n3)	ID Numbers  \n4)	Photos \n5)	Location"),
          ),
          SizedBox(height: 12),
          Text(
            "2. How Do We Use Your Information?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "To provide you with the services you have subscribed to, and fulfill contractual obligations, Ezer will use and process your personal data. will process your data as required by the relevant laws and regulations applicable to our type of service."),
          SizedBox(height: 12),
          Text(
            "3. How Long Do We Store Your Information?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "We will retain your personal data for no longer than is necessary for the purposes defined in this Statement. Once the retention period expires, we will delete or anonymize your personal data, unless otherwise required by laws and regulations."),
          Text(
              "Your personal data collected by the communication services will be retained for as long as you are subscribed to ezer communication services."),
          SizedBox(height: 12),
          Text(
            "4. How do We Share Your Information?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Ezer may disclose your data in response to a legal process or request from a competent authority according to applicable laws or in connection with a legal proceeding or process."),
          SizedBox(height: 12),
          Text(
            "5. How Do We Store Your Information ?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Ezer user Google Service to store and process your information. We rely on Google Cloud for the security of your personal information on the cloud. Google is however a United State company,this means that your personal information is stored on Google Cloud servers outside South Africa."),
          SizedBox(height: 12),
          Text(
            "6. What are Your Rights and Options?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("You have the following rights and options:"),
          Text(
              "1.	Access to your data :You can receive copies of all your information and personal data that we have collected and stored\n2.	Port your data : You can port certain data that you have provided to us in a machine-readable format \n3.	Erase your data : You can delete your data under certain circumstance\n4.	Rectify your data : You can correct your inaccurate data and complete any incomplete data\n5.	Report privacy violations : You can report the Information Regulator at (010 023 5200) / enquiries@inforegulator.org.za to report any privacy violations."),
          SizedBox(height: 12),
          Text(
            "7. Changes to Privacy Policy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Any changes to our Privacy Policy will be posted on this page of the Site. We would encourage users to check the Privacy Policy each time they use the Site. If our privacy policy changes in any way, we will place an updated version on this page. Regularly reviewing this page ensures that you are always aware of what information we collect, how we use it and under what circumstances, if any, we will share it with other parties."),
          SizedBox(height: 12),
          Text(
            "12 How do you contact us ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "If you have any questions, comments, or suggestions on your rights as a data subject or the processing of your personal data by Ezer, please contact us"),
          SizedBox(height: 12),
          Text(
            'Mokoena Mpheng : Information Compliance Officer',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Email : info@freestech.co.za',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Cellphone number : 073 521 7169',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Container buildDesktop(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
              "Statement about Ezer Communication system which is a product of FreesTech Enterprise."),
          SizedBox(height: 12),
          Text(
              "This privacy statement (“Privacy Statement”) (together with our terms of use) explains how we use any personal information we collect from you, or that you provide to us. Please read the following carefully to understand our views and practices regarding your personal information and how we will treat it. By visiting the Site, you confirm that you accept and consent to the practices described in this Privacy Statement, without limitation or qualification. If you do not accept this Privacy Statement, you are not entitled to access or use the app. These policies are subject to periodic review and any changes will be included within this section of the site."),
          SizedBox(height: 12),
          Text(
            "1. What Data do We Collect About You?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Ezer is a communication channel aimed at improving communication for schools, it does this by connecting the three stakeholders involved in a school setup, being the parent, the school the teacher and the transport/driver where necessary."),
          Text(
              "As part of the system services, we shall collect and use your personal data only for the purposes stated in this Statement. Personal information refers to any information that enables Ezer to identify you as a user."),
          Text("We shall collect and process your following information : "),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
                "1)	Names \n2)	Addresses \n3)	ID Numbers  \n4)	Photos \n5)	Location"),
          ),
          SizedBox(height: 12),
          Text(
            "2. How Do We Use Your Information?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "To provide you with the services you have subscribed to, and fulfill contractual obligations, Ezer will use and process your personal data. will process your data as required by the relevant laws and regulations applicable to our type of service."),
          SizedBox(height: 12),
          Text(
            "3. How Long Do We Store Your Information?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "We will retain your personal data for no longer than is necessary for the purposes defined in this Statement. Once the retention period expires, we will delete or anonymize your personal data, unless otherwise required by laws and regulations."),
          Text(
              "Your personal data collected by the communication services will be retained for as long as you are subscribed to ezer communication services."),
          SizedBox(height: 12),
          Text(
            "4. How do We Share Your Information?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Ezer may disclose your data in response to a legal process or request from a competent authority according to applicable laws or in connection with a legal proceeding or process."),
          SizedBox(height: 12),
          Text(
            "5. How Do We Store Your Information ?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Ezer user Google Service to store and process your information. We rely on Google Cloud for the security of your personal information on the cloud. Google is however a United State company,this means that your personal information is stored on Google Cloud servers outside South Africa."),
          SizedBox(height: 12),
          Text(
            "6. What are Your Rights and Options?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("You have the following rights and options:"),
          Text(
              "1.	Access to your data :You can receive copies of all your information and personal data that we have collected and stored\n2.	Port your data : You can port certain data that you have provided to us in a machine-readable format \n3.	Erase your data : You can delete your data under certain circumstance\n4.	Rectify your data : You can correct your inaccurate data and complete any incomplete data\n5.	Report privacy violations : You can report the Information Regulator at (010 023 5200) / enquiries@inforegulator.org.za to report any privacy violations."),
          SizedBox(height: 12),
          Text(
            "7. Changes to Privacy Policy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "Any changes to our Privacy Policy will be posted on this page of the Site. We would encourage users to check the Privacy Policy each time they use the Site. If our privacy policy changes in any way, we will place an updated version on this page. Regularly reviewing this page ensures that you are always aware of what information we collect, how we use it and under what circumstances, if any, we will share it with other parties."),
          SizedBox(height: 12),
          Text(
            "12 How do you contact us ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              "If you have any questions, comments, or suggestions on your rights as a data subject or the processing of your personal data by Ezer, please contact us"),
          SizedBox(height: 12),
          Text(
            'Mokoena Mpheng : Information Compliance Officer',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Email : info@freestech.co.za',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Cellphone number : 073 521 7169',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
