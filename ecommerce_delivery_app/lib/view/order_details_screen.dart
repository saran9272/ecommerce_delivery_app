import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

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
          children: [buildContent()],
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text(
        'Order Details',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  buildContent() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 550,
        width: Get.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Order ID',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '9652341erty74123',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      'Pending',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,color: Colors.grey,
            ),
            buildDetails(),
            const Divider(
              thickness: 1,color: Colors.grey,
            ),
            buildPayment(),
            buildButtons()
          ],
        ),
      ),
    );
  }

  buildDetails() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: const [
              SizedBox(
                width: 150,
                child: Text(
                  'Order Placed On :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text('28-Apr-2023',style: TextStyle(fontSize: 15,color: Colors.black),)
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 150,
                child: Text(
                  'Quantity :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text('01',style: TextStyle(fontSize: 15,color: Colors.black),)
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 150,
                child: Text(
                  'Name :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text('Tony Stark',style: TextStyle(fontSize: 15,color: Colors.black),)
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 150,
                child: Text(
                  'E-mail :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text('ironmantony07@gmail.com',style: TextStyle(fontSize: 15,color: Colors.black),)
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 150,
                child: Text(
                  'Mobile No :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text('9876543210',style: TextStyle(fontSize: 15,color: Colors.black),)
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 150,
                child: Text(
                  'Address :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  width: 200,
                  child: Text('3rd street, cafe road,Newyork, 626390',style: TextStyle(fontSize: 15,color: Colors.black),))
            ],
          ),
        ],
      ),
    );
  }

  buildPayment(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Payment Status',style: TextStyle(fontSize: 15),),
                  Text('COD - Pending',style: TextStyle(fontSize: 15,color: Colors.red),)
                ],
              ),
              Row(
                children: const [
                  Text('Total :',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  Text('\$ 150',style: TextStyle(fontSize: 17,color: Colors.red),)
                ],
              )
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            height: 100,width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [BoxShadow(color: Colors.grey,blurRadius: 5)]
            ),
            child: Row(
              children: [
                Container(
                  height: 90,width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk7dBUHg0-TxoRHsNeDFwc9WR2F2pDuQg6e_eDJKsV0WX2sfuAnb_6oHwfazYRTXvQD9s&usqp=CAU'),fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('iPhone 14 pro max',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Space black',style: TextStyle(fontSize: 15),),
                      Text('internal 1TB',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      Text('\$ 145,889',style: TextStyle(fontSize: 15,color: Colors.red),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  buildButtons(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              onPressed: (){}, child: const Text('Accept',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(150, 50),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
              onPressed: (){}, child: const Text('Decline',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
        ],
      ),
    );
  }
}
