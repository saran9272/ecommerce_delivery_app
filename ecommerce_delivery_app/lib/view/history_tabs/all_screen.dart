import 'package:ecommerce_delivery_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllScreen extends StatelessWidget {
  AllScreen({Key? key}) : super(key: key);

  final images = [
    'https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/6/x/j/-original-imaghxejqvpwfqh2.jpeg?q=70',
    'https://m.media-amazon.com/images/I/51XGrwhczrL._SX300_SY300_QL70_FMwebp_.jpg',
    'https://rukminim1.flixcart.com/image/832/832/l2urv680/shoe/o/i/2/6-5555-xtoon-white-original-image34eajjz4bpg.jpeg?q=70',
    'https://m.media-amazon.com/images/I/51RriyrPvDL._SY450_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi4r6xyGAehSV6PR9fnKhhRj1LPgAPXibQxg&usqp=CAU',
    'https://hips.hearstapps.com/hmg-prod/images/best-touchscreen-laptops-1661789099.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsGQw5PYCOFx19HV4lqP19AlmG_QD0NRhK2Q&usqp=CAU'
  ];

  final title = [
    'iPhones',
    'iWatch 8',
    'X toon white shoes',
    'i Clever Headphones',
    'iPhone 14 pro back case',
    'HP Hybrid',
    'iPad'
  ];

  final text = [
    'Completed',
    'Pending',
    'Pending',
    'Completed',
    'Pending',
    'Completed',
    'Completed'
  ];

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
            title: Text(
              title[index],
              style: const TextStyle(fontSize: 15),
            ),
            trailing: Text(
              text[index],
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: orange),
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
    );
  }
}
