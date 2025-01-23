import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/my_wallet_screen.dart';
import 'package:vehicleproject/screens/primary_vehicle_alert.dart';
import 'package:vehicleproject/widgets/TextFormField.dart';
import 'package:vehicleproject/widgets/acknowledgment.dart';
import 'package:vehicleproject/widgets/buttons.dart';
import 'package:vehicleproject/widgets/chooseItemContainer.dart';
import 'package:vehicleproject/widgets/customRadio.dart';
import 'package:vehicleproject/widgets/fieldName_with_Textfield.dart';
import 'package:vehicleproject/widgets/shortdropDownwithtext.dart';
import 'package:vehicleproject/widgets/textFieldWithDropdown.dart';

class AddNewVehicle extends StatefulWidget {
  const AddNewVehicle({super.key});

  @override
  State<AddNewVehicle> createState() => _AddNewVehicleState();
}

class _AddNewVehicleState extends State<AddNewVehicle> {
  final TextEditingController fieldnameWithTextfield_controller =
      TextEditingController();
  final TextEditingController dropdownwithTextfield = TextEditingController();
  final TextEditingController textformField = TextEditingController();
  final TextEditingController textfieldforDubai_controller =
      TextEditingController();
  bool? isAcknowledged = false;

  String? selectedLocation;

  int _value = 1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        backgroundColor: const Color(0xFFE1DDD2),
        title:const Text(
          "Add New Vehicle",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor:const Color.fromARGB(255, 254, 254, 254),
      body: Stack(children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
             
              Container(
                  height: MediaQuery.of(context).size.height * 0.78,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FieldnameWithTextfield(
                            fieldText: "Vehicle name*",
                            hintText: 'Eg. Toyota Prado',
                            controller: fieldnameWithTextfield_controller,
                          ),
                        ),
                       const SizedBox(
                          height: 9,
                        ),
                        DropdownwithTextfield(
                          fieldText: "Vehicle Register Location",
                          hintText: 'Choose one',
                          dropdownItems: const['Saudi Arabia', 'Dubai', 'qatar'],
                          showDropdown: true,
                          controller: dropdownwithTextfield,
                          onChanged: (value) {
                            setState(() {
                              selectedLocation = value;
                            });
                          },
                        ),
                        Row(
                          children: [
                            ShortDropDown_WithText(
                              fieldText: "Make Year",
                              hintText: "Select Year",
                              dropdownItems:const ['2022', '2023', '2024'],
                              showDropdown: true,
                            ),
                            ShortDropDown_WithText(
                              fieldText: "Color",
                              hintText: "Select Color",
                              dropdownItems: const['Red', 'Green', 'Blue'],
                              showDropdown: true,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        DropdownwithTextfield(
                          fieldText: "Vehicle Type*",
                          hintText: 'Choose one',
                          dropdownItems:const['Sedan', 'Suv', 'Muv'],
                          showDropdown: true,
                          controller: dropdownwithTextfield,
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        DropdownwithTextfield(
                          fieldText: "Ownership",
                          hintText: 'Choose one',
                          dropdownItems:const ['First', 'Second', 'third'],
                          showDropdown: true,
                          controller: dropdownwithTextfield,
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            children: [
                              Text(
                                "Select Plate Type*",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CustomRadioButtonListTile(
                                    color: Colors.white,
                                    value: 1,
                                    groupValue: _value,
                                    title: 'Private',
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                  CustomRadioButtonListTile(
                                    color:const Color.fromARGB(255, 252, 179, 23),
                                    value: 2,
                                    groupValue: _value,
                                    title: 'Taxi',
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                  CustomRadioButtonListTile(
                                    color:const Color.fromARGB(255, 130, 201, 176),
                                    value: 3,
                                    groupValue: _value,
                                    title: 'Diplomatic',
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CustomRadioButtonListTile(
                                    color:const Color.fromARGB(255, 83, 165, 241),
                                    value: 4,
                                    groupValue: _value,
                                    title: 'Transportation',
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                  CustomRadioButtonListTile(
                                    color:const Color.fromARGB(255, 165, 165, 165),
                                    value: 5,
                                    groupValue: _value,
                                    title: 'Temporary',
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                  CustomRadioButtonListTile(
                                    color:const Color.fromARGB(255, 24, 24, 24),
                                    value: 6,
                                    groupValue: _value,
                                    title: 'Export',
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            children: [
                              Text(
                                "License Plate Number*",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                       const SizedBox(
                          height: 10,
                        ),
                        selectedLocation == 'Dubai'
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: TextFormField(
                                      controller: textfieldforDubai_controller,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor:
                                           const Color.fromARGB(255, 254, 254, 254),
                                        focusColor:
                                           const Color.fromARGB(255, 254, 254, 254),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 218, 214, 213),
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 218, 214, 213),
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 218, 214, 213),
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        hintText: "Enter License Plate number",
                                        hintStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 205, 205, 205),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        TextFormFieldd(
                                            hintText: "Eg-7403",
                                            controller: textformField),
                                        TextFormFieldd(
                                            hintText: "Eg-TNJ",
                                            controller: textformField),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        TextFormFieldd(
                                            hintText: "Eg-TNJ",
                                            controller: textformField),
                                        TextFormFieldd(
                                            hintText: "Eg-7403",
                                            controller: textformField),
                                      ],
                                    ),
                                   const SizedBox(width: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        height: 110,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(
                                            'assets/images/Group1.png'),
                                      ),
                                    ),
                                  ],
                                ),
                            ),
                        selectedLocation == 'Dubai'
                            ? const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Car Image",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ChoodeItemContainer(
                                      img: "assets/images/gallery.png",
                                      txt: 'Upload Your Vehicle Image',
                                    ),
                                  ),
                                ],
                              )
                            : const Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(child: Text("or")),
                                  SizedBox(
                                    height: 19,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ChoodeItemContainer(
                                      img: "assets/images/scan.png",
                                      txt: 'Scan Plate',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Car Image",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ChoodeItemContainer(
                                      img: "assets/images/gallery.png",
                                      txt: 'Upload Your Vehicle Image',
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        Acknowledgment(
                            text: 'Make this my primary vehicle',
                            onChanged: (newValue) {
                              setState(() {
                                isAcknowledged = newValue;
                              });
                              if (newValue == true) {
                                showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (builder) {
                                      return  PrimaryVehicleAlert(img: "assets/images/Group 1597882005.png", alertHeading: 'Change Primary Vehicle ?', alertText: 'You already have 7403 TNJ as your primary\nvehicle. Setting this vehicle as primary will\nreplace the current one.', onTap: () { },);
                                    });
                              }
                            })
                      ],
                    ),
                  )),

              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Buttons(
                        color: const Color(0xFF44322D),
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                      
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //       const SnackBar(
                          //         content: Text("Vehicle saved successfully!"),
                          //       ),
                          //     );
                          //   }
                          showModalBottomSheet(
                              context: context,
                              builder: (builder) {
                                return Container(
                                  height: 417.0,
                                  width: MediaQuery.of(context).size.width*0.94,
                                  color: Colors.transparent,
                                  child:  Container(
                                    decoration:  const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(26.0),
                                            topRight:
                                                Radius.circular(26.0))),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        const Text(
                                          "Confirm Vehicle\nLicense Plate",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff94684E)),
                                        ),
                                        const SizedBox(
                                          height: 28,
                                        ),
                                        SizedBox(
                                            height: 57.45,
                                            width: 271,
                                            child: Image.asset(
                                              'assets/images/brandlogo.png',
                                              height: 57.45,
                                              width: 271,
                                            )),
                                        const SizedBox(
                                          height: 85,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          child: Buttons(
                                            color:const Color(0xFF44322D),
                                            onPressed: () {
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MyWalletScreen(),));
                                            },
                                            text: "Confirm  & Save",
                                            textColor: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 9.87,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          child: Buttons(
                                            color:const Color(0xFFF1EFE9),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            text: "Back to Edit",
                                            textColor:const Color(0xff44322D),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        text: 'Save Vehicle',
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
