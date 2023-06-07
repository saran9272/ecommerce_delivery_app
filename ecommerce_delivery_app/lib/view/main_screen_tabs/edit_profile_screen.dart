import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

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
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                buildProfile(),
                const SizedBox(
                  height: 10,
                ),
                buildRider(),
                const SizedBox(
                  height: 10,
                ),
                buildPersonal(),
                const SizedBox(
                  height: 10,
                ),
                buildBank()
              ],
            ),
          ),
        ]),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Profile',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  buildProfile() {
    return Container(
      height: 300,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://www.pinkvilla.com/images/2022-09/robert_downey_jr_opens_up_on_playing_iron_man.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 40),
              backgroundColor: blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text(
                'Edit',
                style: TextStyle(fontSize: 15),
              )),
        ),
      ),
    );
  }

  buildRider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Rider Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 110,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Robert Downey Jr',
                    style: TextStyle(fontSize: 15),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    'Zone: Gandhipuram, Coimbatore',
                    style: TextStyle(fontSize: 15),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    'City: Coimbatore',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  buildPersonal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Personal Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 180,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Phone',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '9876543210',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Alternate Phone',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text('9123456780', style: TextStyle(fontSize: 15))
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'DL No.',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text('TN963852741963', style: TextStyle(fontSize: 15))
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'DL Expiry',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '2037-06-21',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Extra Cash',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '0.00',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  buildBank() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bank Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 110,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Bank Name',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'State Bank Of India',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Account No.',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '96385274139',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'IFSC Code',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'SBI00N1245963',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
