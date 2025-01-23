import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.of(context).size.width*0.44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF8F8F8),
        
       
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Color(0xff94684E17).withOpacity(0.09),
                    borderRadius: BorderRadius.circular(21)
                  ),
                  child: Image.asset("assets/images/carlogo.png"),
                ),
              const SizedBox(height: 8,),
               const Text("My Vehicles",style: TextStyle(color: Color(0xff4C4C4C),fontSize: 12,fontWeight: FontWeight.w400),),
               const SizedBox(height: 4,),
               const Text("102.25 SAR",style: TextStyle(color: Color(0xff94684E),fontSize: 14,fontWeight: FontWeight.w600),)
            
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 52,right: 10),
              child: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.5),
                  
                ),
                child: Image.asset("assets/images/walletadd.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}