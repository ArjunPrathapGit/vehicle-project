import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/add_new_vehicle.dart';
import 'package:vehicleproject/theming.dart';
import 'package:vehicleproject/widgets/buttons.dart';
import 'package:vehicleproject/widgets/vehicleDetails.dart';
import 'package:vehicleproject/widgets/vehicle_with_violation.dart';

class HomeScreen extends StatelessWidget {
  final String? otpVerificationurl;
  final String? resendOtpUrl;
  const HomeScreen({super.key,this.otpVerificationurl,this.resendOtpUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(25, 148, 104, 78),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFE1DDD2),
        title:const Text(
          "My Vehicles",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height*0.78,
            child: SingleChildScrollView(
              child: Column(
                children: [
                     SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: VehicleDetails(
                      color: Color(0xFFE31212),
                      carmodelNumber: '911 GT2 RS',
                      carModelName: '7403 TNJ',
                      carType: 'Sedan',
                      carYear: '2019',
                      purpose: 'Private',
                      carImg: 'assets/images/car1 1.png',
                    ),
                  ),
                 const SizedBox(height: 30,),
                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 9),
                    child: VehicleDetails(
                      color: Colors.black,
                      carmodelNumber: '911 GT2 RS',
                      carModelName: '7403 TNJ',
                      carType: 'Suv',
                      carYear: '2016',
                      purpose: 'Private',
                      carImg: 'assets/images/car1 1.png',
                    ),
                  ),
                 const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: VehicleCardWithViolation(
                      carImg: 'assets/images/car1 1.png',
                      carModelName: 'Toyota Camry',
                      carType: 'Sedan',
                      carYear: "2002",
                      carmodelNumber: "1110 RUA",
                      color: Colors.black,
                      purpose: "Taxi",
                    ),
                  )
                ],
              ),
            ),
          ),
         const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
                child: Buttons(
              color: Color(0xFF44322D),
              text: 'Add New Vehicle',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddNewVehicle(),
                ));
              },
              textColor: Colors.white,
            )
            ),
          )
        ],
      ),
    );
  }
}
