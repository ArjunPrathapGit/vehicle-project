import 'package:flutter/material.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class ResendOtpButton extends StatefulWidget {
  const ResendOtpButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ResendOtpButtonState createState() => _ResendOtpButtonState();
}

class _ResendOtpButtonState extends State<ResendOtpButton> {
  OtpTimerButtonController redController = OtpTimerButtonController();
  OtpTimerButtonController purpleController = OtpTimerButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OtpTimerButton(
              height: 60,
              onPressed: () {},
              text: Text(
                'Resend OTP',
                style: TextStyle(fontSize: 20),
              ),
              duration: 2,
            ),
            OtpTimerButton(
              height: 60,
              onPressed: () {},
              text: Text(
                'Resend OTP',
                style: TextStyle(fontSize: 20),
              ),
              buttonType: ButtonType.text_button,
              backgroundColor: Colors.orange,
              duration: 2,
            ),
            OtpTimerButton(
              height: 60,
              onPressed: () {},
              text: Text(
                'Resend OTP',
                style: TextStyle(fontSize: 20),
              ),
              buttonType: ButtonType.outlined_button,
              backgroundColor: Colors.green,
              duration: 2,
            ),
            OtpTimerButton(
              controller: redController,
              height: 60,
              onPressed: () {
                redController.loading();
                Future.delayed(Duration(seconds: 2), () {
                  redController.startTimer();
                });
              },
              text: Text(
                'Resend OTP',
                style: TextStyle(fontSize: 20),
              ),
              backgroundColor: Colors.red,
              textColor: Colors.white,
              loadingIndicatorColor: Colors.red,
              radius: 30,
              duration: 2,
            ),
            OtpTimerButton(
              controller: purpleController,
              height: 60,
              onPressed: () {
                purpleController.loading();
                Future.delayed(Duration(seconds: 2), () {
                  purpleController.enableButton();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Failed to resend code'),
                    ),
                  );
                });
              },
              text: Text(
                'Resend OTP',
                style: TextStyle(fontSize: 20),
              ),
              backgroundColor: Colors.purple,
              textColor: Colors.white,
              duration: 2,
            ),
          ],
        ),
      ),
    );
  }
}