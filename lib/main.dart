import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/auth/sign_in/signIn_otp_provider.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_In_provider.dart';
import 'package:vehicleproject/screens/auth/sign_up/sign_up_otp_provider.dart';
import 'package:vehicleproject/screens/auth/sign_up/signup_provider.dart';
import 'package:vehicleproject/screens/profile%20page/profile_screen_provider.dart';
// import 'package:vehicleproject/screens/home_Screen.dart';
import 'package:vehicleproject/screens/splash%20screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SignupProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SignInProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SignInOtpProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SignUpOtpProvider(),
        ),
         ChangeNotifierProvider(
          create: (_) => ProfileScreenProvider(),
        ),
        
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'SF-Pro-Display'),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
