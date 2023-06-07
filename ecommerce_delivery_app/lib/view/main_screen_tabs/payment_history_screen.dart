import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({Key? key}) : super(key: key);

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
            buildContainer(),
            buildContent()
          ],
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
        backgroundColor: blue.withOpacity(0.3),
        elevation: 0,
        title: const Text(
          'Transaction History',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }

  buildContainer(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: const [
              Icon(Icons.arrow_back,color: Colors.grey,),
              SizedBox(width: 10,),
              Text('Search transactions',style: TextStyle(fontSize: 15,color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }

  buildContent(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 250,width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: const [
            ListTile(
              title: Text('SBI Account',style: TextStyle(fontSize: 15),),
              subtitle: Text('07 May 2023 at 10.15 AM',style: TextStyle(fontSize: 15,color: Colors.grey),),
              trailing: Text('\$ 1500',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            Divider(
              thickness: 1,color: Colors.grey,
            ),
            ListTile(
              title: Text('SBI Account',style: TextStyle(fontSize: 15),),
              subtitle: Text('14 May 2023 at 12.33 PM',style: TextStyle(fontSize: 15,color: Colors.grey),),
              trailing: Text('\$ 3000',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            Divider(
              thickness: 1,color: Colors.grey,
            ),
            ListTile(
              title: Text('SBI Account',style: TextStyle(fontSize: 15),),
              subtitle: Text('21 May 2023 at 10.45 AM',style: TextStyle(fontSize: 15,color: Colors.grey),),
              trailing: Text('\$ 1000',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
