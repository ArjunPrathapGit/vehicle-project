import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VehicleContainers extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String vehicleModel;
  final String vehicleName;
  Function(int)? selectItem;
  VehicleContainers(
      {super.key,
      required this.vehicleModel,
      required this.vehicleName,
      this.selectItem,
      required this.index,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () {
          selectItem!(index);
          print(selectItem);
        },
        child: Container(
          decoration: BoxDecoration(
              color: isSelected
                  ? Color(0xff94684E1A).withOpacity(0.1)
                  : Color(0xffF8F8F8),
              border: isSelected
                  ? Border.all(color: Color(0xff44322D))
                  : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(14)),
          height: 55,
          width: 195,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vehicleModel,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      vehicleName,
                      style: TextStyle(
                          color: Color(0xffA1A09B),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 20,
                width: 52,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                    child: Text(
                  "Primary",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
