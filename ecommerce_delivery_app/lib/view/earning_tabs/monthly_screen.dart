import 'package:ecommerce_delivery_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthlyScreen extends StatelessWidget {
  const MonthlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildContainer(),
          buildSizedBox(),
          buildPerformance(),
          const SizedBox(
            height: 10,
          ),
          buildEarnings(),
        ],
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 50,
      width: Get.width,
      color: blue.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'May 2023',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  buildSizedBox() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '\$ 0',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$ 0',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$ 0',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$ 0',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '1st week',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '2nd week',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '3rd week',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '4th week',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildPerformance() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Performance for this Month',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See trips',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
          Container(
            height: 80,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'trips',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'login hours',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'orders',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildEarnings() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 80,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Earnings for this Month',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ 0',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Earnings for last week',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        '\$ 0',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            width: Get.width,
            decoration:  BoxDecoration(
              color: orange.withOpacity(0.3),
              border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.shopping_bag,
                    size: 30,
                    color: orange,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Order Earning',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold,letterSpacing: 2),
                      ),
                      Text(
                        'earnings per order',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                  const Text(
                    '\$ 0',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
