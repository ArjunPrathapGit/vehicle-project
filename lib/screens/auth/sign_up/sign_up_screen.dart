import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_in_screen.dart';

import 'package:vehicleproject/screens/auth/sign_up/signup_provider.dart';

import 'package:vehicleproject/widgets/buttons.dart';
import 'package:vehicleproject/widgets/email_textformfield.dart';

import 'package:vehicleproject/widgets/fieldName_with_Textfield.dart';
import 'package:vehicleproject/widgets/mobile_number_textfield.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String selectedCountryCode = '+966';
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
     fullNameController = TextEditingController();
  mobileController = TextEditingController();
  emailController = TextEditingController();

    emailController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<SignupProvider>().resetEmailError();
      });
    });
    mobileController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<SignupProvider>().resetFullNameError();
      });
    });
    mobileController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<SignupProvider>().resetMobileError();
      });
    });
    context.read<SignupProvider>().resetCheckBoxError();
   

    fullNameController.clear();
     mobileController.clear();
      emailController.clear();

  }
  
  
  @override
void dispose() {
   
   fullNameController.clear();
  mobileController.clear();
  emailController.clear();

  fullNameController.dispose();
  mobileController.dispose();
  emailController.dispose();

  super.dispose();
}


  @override
  Widget build(BuildContext context) {
     
    // ignore: unused_local_variable
    final signupProvider = Provider.of<SignupProvider>(context, listen: false);

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
          body: Stack(children: [
            SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only( left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff94684E)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Create an account to get started\nand enjoy the full experience with us.",
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
                              Consumer<SignupProvider>(
                                builder: (context, signupProvider, child) {
                                  return FieldnameWithTextfield(
                                    controller: fullNameController,
                                    fieldText: "Full Name*",
                                    hintText: "Enter Your Name",
                                    errorText: fullNameController.text.isEmpty
                                        ? signupProvider
                                            .errorTextForFullNameTextFormfield
                                        : signupProvider
                                                .errorTextForFullNameTextFormfield =
                                            null,
                                  );
                                },
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Consumer<SignupProvider>(
                                builder: (context, signupProvider, child) {
                                  return FieldnameWithTextfieldforMobile(
                                    controller: mobileController,
                                    fieldText: "Mobile Number*",
                                    hintText: "Enter your mobile Number",
                                    onCountryCodeChanged: (value) {
                                      selectedCountryCode = value;
                                    },
                                    errorText: mobileController.text.isEmpty
                                        ? signupProvider
                                            .errorTextForMobileTextFormfield
                                        : signupProvider
                                            .errorTextForMobileTextFormfield = "",
                                    onChanged:
                                        signupProvider.validateInputformobile,
                                  );
                                },
                              ),
                              Consumer<SignupProvider>(
                                builder: (context, signupProvider, child) {
                                  String mobileError = signupProvider.mobileError;
      
                                  return mobileError.isNotEmpty
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3, left: 15),
                                          child: Row(
                                            children: [
                                              Text(
                                                mobileError,
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),
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
                              Consumer<SignupProvider>(
                                builder: (context, signupProvider, child) {
                                  return FieldnameWithTextfieldForEmail(
                                    controller: emailController,
                                    fieldText: "Email",
                                    hintText: "enter you email",
                                    errorText: emailController.text.isEmpty
                                        ? signupProvider
                                            .errorTextForEmailTextFormfield
                                        : signupProvider
                                            .errorTextForEmailTextFormfield = "",
                                    onChanged:
                                        signupProvider.validateInputforEmail,
                                  );
                                },
                              ),
                              Consumer<SignupProvider>(
                                builder: (context, signupProvider, child) {
                                  return signupProvider.emailError.isNotEmpty
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3, left: 15),
                                          child: Row(
                                            children: [
                                              Text(
                                                signupProvider.emailError,
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        )
                                      : SizedBox.shrink();
                                },
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          )),
                      Row(
                        children: [
                          Consumer<SignupProvider>(
                            builder: (context, signupProvider, child) {
                              return Checkbox(
                                activeColor: Color(0xff44322D),
                                value: signupProvider.isChecked,
                                onChanged: (newValue) {
                                  signupProvider.setCheckboxValue(newValue!);
                                },
                              );
                            },
                          ),
                          Text(
                            "I agree to the Terms & Conditions",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Consumer<SignupProvider>(
                        builder: (context, signupProvider, child) {
                          return Visibility(
                            visible: !signupProvider.isValid,
                            child: Text(
                              "You must agree to the Terms & Conditions",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 10),
                        child: Buttons(
                          color: Color(0xFF44322D),
                          text: 'Sign Up',
                          onPressed: () {
                            final signupProvider = Provider.of<SignupProvider>(
                                context,
                                listen: false);
                            print(selectedCountryCode + mobileController.text);
                            print(signupProvider.isLoading);
                            signupProvider.validateInputforfullname(
                                fullNameController.text);
                            signupProvider
                                .validateInputformobile(mobileController.text);
      
                            signupProvider
                                .validateInputforEmail(emailController.text);
      
                            signupProvider.validateCheckbox();
                            final signupProviders = Provider.of<SignupProvider>(
                                context,
                                listen: false);
      
                            if (_formKey.currentState!.validate() &&
                                signupProvider.isChecked) {
                              signupProviders.signUp(
                                fullNameController.text,
                                mobileController.text,
                                emailController.text,
                                signupProvider.isChecked,
                                selectedCountryCode,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffCCB5A7)),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignInScreen(),
                                ));
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff44322D)),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Consumer<SignupProvider>(
              builder: (context, signupProvider, child) {
                return signupProvider.isLoading
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
