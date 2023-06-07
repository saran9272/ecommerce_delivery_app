import 'package:ecommerce_delivery_app/view/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constant/colors.dart';


class MobileNumberScreen extends StatelessWidget {
  const MobileNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [blue, lightOrange, mildOrange, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: buildContainer())
          ],
        ),
      ),
    );
  }

  buildContainer(){
    return Container(
      height: 300,width: Get.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children:  [
            const SizedBox(height: 10,),
            const Text('Verify Mobile Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            const SizedBox(height: 10,),
            const Text('Enter your 10 digit number to receive OTP',style: TextStyle(fontSize: 15,color: Colors.grey),),
            const SizedBox(height: 20,),
            buildPhoneNumber()
          ],
        ),
      ),
    );
  }

  buildPhoneNumber(){
    return Column(
      children: [
        IntlPhoneField(
          style: const TextStyle(fontSize: 17,color: Colors.black),
          decoration : const InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(fontSize: 15,color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: blue
                  )
              )
          ),
          initialCountryCode: 'IN',
        ),
        const SizedBox(height: 50,),
        InkWell(onTap: (){
          Get.to(const DetailsScreen());
        },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: blue,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 25),
            child: const Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          ),)
      ],
    );
  }
}
