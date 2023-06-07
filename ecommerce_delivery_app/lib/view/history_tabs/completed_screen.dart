import 'package:ecommerce_delivery_app/view/history_tabs/completed_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';

class CompletedScreen extends StatelessWidget {
  CompletedScreen({Key? key}) : super(key: key);

  final images = [
    'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/6/x/j/-original-imaghxejqvpwfqh2.jpeg?q=70',
    'https://m.media-amazon.com/images/I/51RriyrPvDL._SY450_.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/best-touchscreen-laptops-1661789099.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsGQw5PYCOFx19HV4lqP19AlmG_QD0NRhK2Q&usqp=CAU',
  ];

  final title = [
    'iPhone 14 pro max',
    'i Clever Headphones',
    'HP Hybrid',
    'iPad'
  ];

  final text = ['Veera Raghavan', 'Nivy', 'Jack Sparrow', 'Victor'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildContainer(),
          buildContent()],
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 50,
      width: Get.width,
      color: blue.withOpacity(0.3),
      child:  Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              '01-May-2023',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down,color: Colors.black,)
          ],
        ),
      ),
    );
  }

  buildContent() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Get.to(const CompletedDetailsScreen());
        },
        child: ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: title.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(images[index]),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  title[index],
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              subtitle: Text(
                text[index],
                style: const TextStyle(fontSize: 15, color: orange),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
                size: 25,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 1,
              color: Colors.grey,
            );
          },
        ),
      ),
    );
  }
}
