import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class PendingDetailsScreen extends StatelessWidget {
  const PendingDetailsScreen({Key? key}) : super(key: key);

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
            buildShip(),
            buildDate(),
            buildMethod(),
            buildAddress(),
            buildOrder(),
            buildComplete()
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
        'Pending',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  buildShip() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 180,
        width: Get.width,
        decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 2)]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '18/05/2023',
                style: TextStyle(
                    fontSize: 15, color: orange, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://hips.hearstapps.com/hmg-prod/images/best-touchscreen-laptops-1661789099.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 80,
                    width: 210,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'HP Hybrid 2325 16GB 512GB i7',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Qty: 1',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Sold By: VTS Pvt.Ltd',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '\$ 78,899',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  buildDate() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 120,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'Order Details',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Order date',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blue),
                    ),
                  ),
                  Text(
                    '01-May-2023',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Received date',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blue),
                    ),
                  ),
                  Text(
                    '03-May-2023',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Dispatch',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blue),
                    ),
                  ),
                  Text(
                    'Pending',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildMethod() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Payment Method',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'Pay On Delivery (POD)',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildAddress() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping Address',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Bremi Nivedhaa M,',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '83, second floor,',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'A Ramalinga Colony,',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Coimbatore,Tamil Nadu 641043,',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'India.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildOrder() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 170,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Order Summary',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Item',
                            style: TextStyle(fontSize: 15, color: blue),
                          ),
                        ),
                        Text(
                          '\$ 78,599',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Postage & Packing',
                            style: TextStyle(fontSize: 15, color: blue),
                          ),
                        ),
                        Text(
                          '\$ 100',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Tax',
                            style: TextStyle(fontSize: 15, color: blue),
                          ),
                        ),
                        Text(
                          '\$ 200',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Delivery',
                            style: TextStyle(fontSize: 15, color: blue),
                          ),
                        ),
                        Text(
                          '-\$ 49',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Order Total',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '\$ 78,899',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildComplete() {
    return Container(
      height: 70,
      width: 70,
      color: blue,
      child: const Center(
        child: Text(
          'Pending',
          style: TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white),
        ),
      ),
    );
  }
}
