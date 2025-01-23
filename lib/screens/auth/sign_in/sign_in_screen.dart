

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_In_provider.dart';
import 'package:vehicleproject/screens/auth/sign_up/signup_provider.dart';




import 'package:vehicleproject/widgets/buttons.dart';


import 'package:vehicleproject/widgets/mobile_number_textfield.dart';

// ignore: must_be_immutable
class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  TextEditingController mobileController = TextEditingController();
  

  
 String selectedCountryCode = '+966';
   bool isLoading = false; 
 

  @override
  void initState() {
    super.initState();

    
    context.read<SignupProvider>().resetCheckBoxError();

  }



  @override
  Widget build(BuildContext context) {

   
   // ignore: unused_local_variable
   final signInProvider = Provider.of<SignInProvider>(context,listen: false);

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 24,
                width: 24,
                child: Image.asset("assets/images/arrow-left.png"),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  height: 32,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xffCCB5A7)),
                      color: Color(0xffDE542D).withOpacity(0.1)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "EN",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/images/global.png",
                        height: 24,
                        width: 24,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
      
      
        body: Stack(
          children: [
            SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.31, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff94684E)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "We are happy to see you again.\nTo use your account you should login first.",
      
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff959595)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              
                    
                              SizedBox(
                                height: 8,
                              ),
                             Consumer<SignInProvider>(builder: (context, signInProvider, child) {
                               return FieldnameWithTextfieldforMobile(
                                controller: mobileController,
                                fieldText: "Mobile Number*",
                                hintText: "Enter your mobile Number",
                                onCountryCodeChanged:(value) {
                                  selectedCountryCode=value;
                                },
                                errorText: signInProvider.errorTextForMobileTextFormfield,
                                onChanged: signInProvider.validateInputformobile,
                              );
                             },),
                             Consumer<SignInProvider>(
        builder: (context, signInProvider, child) {
      String mobileError = signInProvider.mobileError; 
      
      return mobileError.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 3, left: 15),
              child: Row(
                children: [
                  Text(
                    mobileError,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              ),
            )
          : SizedBox.shrink(); 
        },
      ),
      
                              SizedBox(
                                height: 8,
                              ),
                            
                             
      
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          )),
                      
                  
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 10),
                        child: Buttons(
                          color: Color(0xFF44322D),
                          text: 'Sign In',
                         onPressed: () {
                          final signInProvider = Provider.of<SignInProvider>(context, listen: false);
                          print(selectedCountryCode+mobileController.text);
                          print(signInProvider.isLoading);
                         
                          signInProvider.validateInputformobile(mobileController.text);
                          
              
                  
              
              final signInProviders= Provider.of<SignInProvider>(context, listen: false);
                  
              if (_formKey.currentState!.validate() ) {
                  signInProviders.signIn(
                   
              
              mobileController.text,
             
              selectedCountryCode ,
                 context,
                  );
                  
              }
              
                  },
                  
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      
                    ],
                  ),
                  
                ),
                
              ),
            ),
            Consumer<SignInProvider>(
        builder: (context, signInProvider, child) {
      return signInProvider.isLoading
          ? Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Color(0xff44322D),
                ),
              ),
            )
          : SizedBox.shrink(); 
        },
      ),
      ])),
    );
  }

  
}
