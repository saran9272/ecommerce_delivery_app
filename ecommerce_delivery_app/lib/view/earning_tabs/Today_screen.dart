import 'package:ecommerce_delivery_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TodayScreen extends StatelessWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildContainer(),
          buildDelivery(),
          buildList(),
          buildEarnings()
        ],
      ),
    );
  }

  buildContainer(){
    return Container(
      height: 50,width: Get.width,
      color: blue.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('01-May-2023',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
    );
  }

  buildDelivery(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total Delivery',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              Container(
                height: 50,width: 50,
                decoration: BoxDecoration(
                  color: mildOrange,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 5)]
                ),
                child: const Center(child: Text('03',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
              )
            ],
          )
        ],
      ),
    );
  }

  buildList(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 300,width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Delivery List',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
           ListTile(
             title: Text('HP Laptop',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
             subtitle: Text('(10.00 AM)',style: TextStyle(fontSize: 15,color: Colors.grey),),
             trailing: Text('Gandhipuram',style: TextStyle(fontSize: 17),),
           ),
            Divider(thickness: 1,color: Colors.grey,),
            ListTile(
              title: Text('iPhone 14 Pro Max',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text('(10.45 AM)',style: TextStyle(fontSize: 15,color: Colors.grey),),
              trailing: Text('Saibaba Colony',style: TextStyle(fontSize: 17),),
            ),
            Divider(thickness: 1,color: Colors.grey,),
            ListTile(
              title: Text('iWatch series 8',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              subtitle: Text('(11.30 AM)',style: TextStyle(fontSize: 15,color: Colors.grey),),
              trailing: Text('Power House',style: TextStyle(fontSize: 17),),
            ),
          ],
        ),
      ),
    );
  }

  buildEarnings(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,width: Get.width,
        decoration: BoxDecoration(
          color: orange.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.shopping_bag,color: orange,),
              Text('Total Earning',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,letterSpacing: 2),),
              Text('\$ 0',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
