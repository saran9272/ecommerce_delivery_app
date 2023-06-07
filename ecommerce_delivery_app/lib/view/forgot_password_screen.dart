import 'package:ecommerce_delivery_app/view/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
                child: buildContainer(),)
          ],
        ),
      ),
    );
  }

  buildContainer(){
    return Container(
      height: 400,width: Get.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children:  [
            const Text('Forgot Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            buildTextField()
          ],
        ),
      ),
    );
  }

  buildTextField(){
    return Column(
      children:  [
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Phone Number',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Confirm Password',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        const SizedBox(height: 30,),
        buildButton()
      ],
    );
  }

  buildButton(){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(400, 60),
            backgroundColor: blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )
        ),
        onPressed: (){
          Get.to(const SignInScreen());
        }, child: const Text('Update',style: TextStyle(fontSize: 15,color: Colors.white),));
  }
}
