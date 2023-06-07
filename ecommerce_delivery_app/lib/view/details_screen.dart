import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: Get.height,width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [BoxShadow(color: Colors.grey,blurRadius: 5)]
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children:  [
                      const Text('Welcome To Viswa',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      const Text('Before proceeding, please share your company details with us.',style: TextStyle(fontSize: 15),),
                      buildTextField()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

buildTextField(){
    return Column(
      children: const [
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              labelText: 'Company Name',
              labelStyle: TextStyle(fontSize: 12,color: Colors.grey),
              hintText: 'Company Name',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
      ],
    );
}
}
