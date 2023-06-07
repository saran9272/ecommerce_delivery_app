import 'package:ecommerce_delivery_app/view/main_screen_tabs/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
        ));
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text('Profile',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
    );
  }

  buildContainer(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 130,width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.grey,blurRadius: 5)]
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(image: NetworkImage('https://www.pinkvilla.com/images/2022-09/robert_downey_jr_opens_up_on_playing_iron_man.jpg')),
                ),
              ),
            ),
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Robert Downey Jr',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    const Text('FE524552',style: TextStyle(fontSize: 15),),
                    const SizedBox(height: 5,),
                    Row(
                      children: const [
                        Icon(Icons.phone,size: 20,color: blue,),
                        Text('Phone: 9876543210',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.location_on,size: 20,color: orange,),
                        Text('Gandhipuram',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildContent(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 580,width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children:  [
              GestureDetector(
                onTap: (){
                  Get.to(const EditProfileScreen());
                },
                child: const ListTile(
                  title: Text('Manage Profile',style: TextStyle(fontSize: 15),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Notifications',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Preferences',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('History',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Refer a Friend',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Bank Details',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Settings',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Log Out',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
