import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:vehicleproject/screens/primary_vehicle_alert.dart';
import 'package:vehicleproject/widgets/buttons.dart';

class VehicleCardWithViolation extends StatefulWidget {
  final Color color;

  final String carmodelNumber;
  final String carModelName;
  final String carType;
  final String carYear;
  final String purpose;
  final String carImg;
  

  VehicleCardWithViolation(
      {super.key,
      required this.color,
      required this.carmodelNumber,
      required this.carModelName,
      required this.carType,
      required this.carYear,
      required this.purpose,
      required this.carImg,
      });

  @override
  State<VehicleCardWithViolation> createState() => _VehicleCardWithViolationState();
}

class _VehicleCardWithViolationState extends State<VehicleCardWithViolation> {
  int? _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.16,
        motion: ScrollMotion(),
        children: [
          DottedBorder(
            color: Color(0xFFFF7070),
            borderType: BorderType.RRect,
            strokeWidth: 2.5,
            dashPattern: [
              4,
              4,
              4,
              4
            ],
            radius: Radius.circular(10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (builder) {
                        return  PrimaryVehicleAlert(img: "assets/images/Group 1597882005.png", alertHeading: 'Delete Vehicle?', alertText: 'Are you sure you want to delete this vehicle? This action cannot be undone.Confirm to proceed or cancel to go back',onTap: () {
                          Navigator.pop(context);Future.delayed(const Duration(milliseconds: 500), () {

showModalBottomSheet(
  backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
  
  context: context, builder:(builder){
return SizedBox(
      height: 444,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25) )

              ),
                height: 365.0,
                width: MediaQuery.of(context).size.width*0.97,
               
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                     const Text(
                      "Vehicle Removed Successfully",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff94684E)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     const Text(
                     "The selected vehicle has been deleted from your profile.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 60,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Buttons(color: Color(0xFF44322D), text: 'Okay', onPressed: () { 
                        Navigator.pop(context);
                      }, textColor: Colors.white, ),
                    )

                   
                  ],
                )),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 280,
            child: Container(
              height: 138,
              width: 138,
              child: Image.asset('assets/images/Group 3.png'),
            ),
          ),
        ],
      ),
    );
});

  setState(() {
    
  });

});
                        },);
                      });
                },
                child: Container(
                  height: 120,
                  width: 50,
                  color: Color.fromARGB(255, 255, 241, 241),
                  child: Image.asset("assets/images/trash.png"),
                ),
              ),
            ),
          )
        ],
      ),
      child: Container(
        height: 131,
        width: 345,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(8),
           boxShadow: [BoxShadow(
          
      color: Colors.grey.shade300,
      blurRadius: 3.0,
      spreadRadius: 0
    ),]
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
              height: 131,
              width: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      topLeft: Radius.circular(8)),
                  color: widget.color),
            ),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFFE1DDD2)),
              child: Container(
                  height: 29, width: 74, child: Image.asset(widget.carImg)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.carmodelNumber,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      
                      SizedBox(
                        width: 140,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Image.asset("assets/images/edit.png")],
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Text(
                        widget.carModelName,
                        style: TextStyle(color: Color(0xFF94684E)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 15,
                        width: 1,
                        decoration: BoxDecoration(color: Color(0xFFE1DDD2)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(widget.carType,
                          style: TextStyle(color: Color(0xFF94684E))),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 15,
                        width: 1,
                        decoration: BoxDecoration(color: Color(0xFFE1DDD2)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(widget.carYear,
                          style: TextStyle(color: Color(0xFF94684E))),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 15,
                        width: 1,
                        decoration: BoxDecoration(color: Color(0xFFE1DDD2)),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedValue = _selectedValue == 1 ? null : 1;
                          });
                        },
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selectedValue == 1
                                ? Colors.yellow
                                : Colors.transparent,
                            border: Border.all(
                              color: _selectedValue == 1
                                  ? Colors.yellow
                                  : Colors.black,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(widget.purpose,
                          style: TextStyle(color: Color(0xFF94684E))),
                    ],
                  ),
                  
                ],
              ),
            )
                  ],
                ),
                SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Container(
                     height: 1,
                    width: 330,
                     color: Color(0xffF1F1F1),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 15),
                   child: Row(
                    
                    children: [
                      Image.asset("assets/images/danger.png",height: 14,width: 14,),
                      SizedBox(width: 10,),
                      Text("1 Violation Ticket ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff94684E)),),
                      SizedBox(width: 130,),

                      Container(
                        height: 27,
                        width: 73,
                        decoration: BoxDecoration(
                          color: Color(0xff44322D),
                          borderRadius: BorderRadius.circular(34)
                        ),
                        child: Center(child: Text("View",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500,color: Colors.white ),)),
                      )
                    ],
                   ),
                 )
                
                
              ],
            ),
            

          ],
        ),


      )
    );
  }
}
