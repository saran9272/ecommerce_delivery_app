import 'package:ecommerce_delivery_app/view/main_screen_tabs/payment_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

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
          children: [buildContent(), buildWeek()],
        ),
      ),
    );
  }

  buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildDate(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 200,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)),
            child: SizedBox(
              height: 50,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total Balance',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          '\$ 0',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: orange),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Available cash limit: \$ 1000 <',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Withdrawable amount',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$ 0',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: orange),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'View Details',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: blue,
                                fixedSize: const Size(400, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            onPressed: () {},
                            child: const Text(
                              'Withdraw',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Get.to(const PaymentHistoryScreen());
          },
          child: Container(
            height: 60,
            width: Get.width,
            color: Colors.white,
            child: const Center(
                child: Text(
              'Transaction History',
              style: TextStyle(fontSize: 17, color: blue),
            )),
          ),
        )
      ],
    );
  }

  buildDate() {
    return Container(
      height: 50,
      width: Get.width,
      color: orange.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            Text(
              'Date: 01 May - 07 May',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  buildWeek() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
                child: Text(
              'This Week',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
          ),
          Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
                child: Text(
              'Last Week',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
          ),
          Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
                child: Text(
              'Select Week',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
          ),
        ],
      ),
    );
  }
}
