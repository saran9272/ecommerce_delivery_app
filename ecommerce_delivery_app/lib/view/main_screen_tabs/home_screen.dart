import 'package:ecommerce_delivery_app/view/order_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        appBar: buildAppBar(),
        body: ListView(
          children: [
            buildContent(),
            buildContent1(),
            buildContent2()
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text('All Pending',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      actions: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.notifications,),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.settings,),
        )
      ],
    );
  }
  
  buildContent(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 180,width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Order ID',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('8596rtyu785',style: TextStyle(fontSize: 15,color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Order Placed on:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('28-Apr-2023',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Payment Status',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('COD-Pending',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children:  const [
                      SizedBox(
                          width: 150,
                          child: Text('Total:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                      Text('\$ 150',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 17),),
                    ],
                  ),
                  buildButtons()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: blue,
              fixedSize: const Size(100, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )
            ),
            onPressed: (){}, child: const Text('Pending',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: mildOrange,
            fixedSize: const Size(50, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )
          ),
          onPressed: (){
            Get.to( OrderDetailsScreen());
          }, child: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,))
      ],
    );
  }

  buildContent1(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 180,width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Order ID',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('8596rtyu785',style: TextStyle(fontSize: 15,color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Order Placed on:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('27-Apr-2023',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Payment Status',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('Credit Card-Successful',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children:  const [
                      SizedBox(
                          width: 150,
                          child: Text('Total:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                      Text('\$ 230',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 17),),
                    ],
                  ),
                  buildButtons1()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildButtons1(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: blue,
                fixedSize: const Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
            ),
            onPressed: (){}, child: const Text('Pending',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: mildOrange,
                fixedSize: const Size(50, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )
            ),
            onPressed: (){
              Get.to( OrderDetailsScreen());
            }, child: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,))
      ],
    );
  }

  buildContent2(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 180,width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Order ID',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('8596rtyu785',style: TextStyle(fontSize: 15,color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Order Placed on:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('30-Apr-2023',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                          width: 150,
                          child: Text('Payment Status',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                      Text('COD-Pending',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children:  const [
                      SizedBox(
                          width: 150,
                          child: Text('Total:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                      Text('\$ 599',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 17),),
                    ],
                  ),
                  buildButtons2()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  buildButtons2(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: blue,
                fixedSize: const Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
            ),
            onPressed: (){}, child: const Text('Pending',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: mildOrange,
                fixedSize: const Size(50, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )
            ),
            onPressed: (){
              Get.to( OrderDetailsScreen());
            }, child: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,))
      ],
    );
  }
}
