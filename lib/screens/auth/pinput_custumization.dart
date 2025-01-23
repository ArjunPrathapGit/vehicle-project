import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


class PinputExample extends StatefulWidget {

  final TextEditingController pinController;


  const PinputExample({Key? key,required this.pinController}) : super(key: key);

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
 
  late final TextEditingController _pinController;
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;
  

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    _pinController = TextEditingController();
    focusNode = FocusNode();

    

    /// In case you need an SMS autofill feature
  //   smsRetriever = SmsRetrieverImpl(
  //     SmartAuth(),
  //   )
  }

  @override
  void dispose() {
    widget.pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    // const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(19),
       
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(autofocus: true,
              // You can pass your own SmsRetriever implementation based on any package
              // in this example we are using the SmartAuth
              
              controller: widget.pinController ,
              focusNode: focusNode,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },

              
                preFilledWidget: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff44322D33)
                  ),
                ),
              
              
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(19),
                 
                ),
              ),
              // errorPinTheme: defaultPinTheme.copyBorderWith(
              //   border: Border.all(color: Colors.redAccent),
              // ),
            ),
          ),
          
        ],
      ),
    );
  }
}

/// You, as a developer should implement this interface.
/// You can use any package to retrieve the SMS code. in this example we are using SmartAuth
// class SmsRetrieverImpl implements SmsRetriever {
//   const SmsRetrieverImpl(this.smartAuth);

//   final SmartAuth smartAuth;

//   @override
//   Future<void> dispose() {
//     return smartAuth.removeSmsListener();
//   }

//   @override
//   Future<String?> getSmsCode() async {
//     final signature = await smartAuth.getAppSignature();
//     debugPrint('App Signature: $signature');
//     final res = await smartAuth.getSmsCode(
//       useUserConsentApi: true,
//     );
//     if (res.succeed && res.codeFound) {
//       return res.code!;
//     }
//     return null;
//   }

//   @override
//   bool get listenForMultipleSms => false;}