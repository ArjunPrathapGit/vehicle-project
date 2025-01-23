import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFE1DDD2),
        title: const Text(
          "Add New Vehicle",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "By downloading, accessing, or using our mobile application\nand services, you agree to comply with and be bound by\nthe following Terms and Conditions. Please read them\ncarefully.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Acceptance of Terms",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "By using this application, you acknowledge that you have read,\nunderstood, and agree to these Terms and Conditions. If you do\nnot agree, please discontinue using the app immediately.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Service Overview",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "provides users with a platform to locate, reserve, and manage\nparking spaces in Saudi Arabia. Additional services may include\nreal-time parking availability, payment processing, and\nnotifications for parking-related updates.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "User Responsibilities",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "\u2022 Ensure all information provided during registration is accurate and up to date.\n\u2022 Comply with all applicable traffic and parking laws in Saudi Arabia.\n\u2022 Use the app only for lawful purposes.\n\u2022 Be responsible for securing your device and safeguarding login credentials.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Payment Terms",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "\u2022 Payments for parking services can be made through the app using supported payment methods.\n\u2022 All payments are final and non-refundable, except in cases of system errors or as required by applicable laws.\n\u2022 Any additional charges, including penalties for overstaying or violations, will be billed to the registered account.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Parking Violations and Penalties",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "\u2022 Users are responsible for complying with parking regulations as per Saudi laws.\n\u2022 The app may facilitate the payment of parking violation tickets but does not influence or reduce penalties issued by authorities.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Your use of the app is subject to our Privacy Policy, which\ngoverns how we collect, use, and protect your personal data.\nPlease review our Privacy Policy for details.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Prohibited Activities",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "\u2022Unauthorized access or use of the app’s systems.\n\u2022Tampering with or misusing parking spaces.\n\u2022Using the app for fraudulent or malicious purposes.",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff959595)),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
