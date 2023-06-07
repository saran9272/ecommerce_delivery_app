import 'package:ecommerce_delivery_app/constant/colors.dart';
import 'package:ecommerce_delivery_app/view/history_tabs/pending_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PendingScreen extends StatelessWidget {
  PendingScreen({Key? key}) : super(key: key);

  final images = [
    'https://m.media-amazon.com/images/I/51XGrwhczrL._SX300_SY300_QL70_FMwebp_.jpg',
    'https://rukminim1.flixcart.com/image/832/832/l2urv680/shoe/o/i/2/6-5555-xtoon-white-original-image34eajjz4bpg.jpeg?q=70',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi4r6xyGAehSV6PR9fnKhhRj1LPgAPXibQxg&usqp=CAU',
  ];

  final title = ['iWatch', 'X toon white shoes', 'iPhone 14 pro back case'];

  final text = ['Saran Murugan', 'Hardin', 'Tessa'];

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
          Get.to(const PendingDetailsScreen());
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
                Icons.location_on,
                color: Colors.red,
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
