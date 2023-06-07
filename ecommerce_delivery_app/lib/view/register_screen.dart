import 'package:ecommerce_delivery_app/view/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
        body: Stack(
          children: [Positioned(bottom: 0, child: buildContainer())],
        ),
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 500,
      width: Get.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            buildTextField(),
            const SizedBox(height: 10,),
            buildButtons()
          ],
        ),
      ),
    );
  }

  // buildGoogle() {
  //   return SizedBox(
  //     width: 180,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Column(
  //           children: [
  //             Container(
  //               height: 70,
  //               width: 70,
  //               decoration: BoxDecoration(
  //                 border: Border.all(color: Colors.grey),
  //                 borderRadius: BorderRadius.circular(50),
  //               ),
  //               child: Center(
  //                 child: Container(
  //                   height: 30,
  //                   width: 30,
  //                   decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(50),
  //                       boxShadow: const [
  //                         BoxShadow(color: Colors.black, blurRadius: 5)
  //                       ],
  //                       image: const DecorationImage(
  //                           image: NetworkImage(
  //                               'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png'),
  //                           fit: BoxFit.cover)),
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(
  //               height: 5,
  //             ),
  //             const Text(
  //               'Google',
  //               style: TextStyle(fontSize: 15),
  //             ),
  //           ],
  //         ),
  //         Column(
  //           children: [
  //             Container(
  //               height: 70,
  //               width: 70,
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(50),
  //                   border: Border.all(color: Colors.grey)),
  //               child: Center(
  //                 child: Container(
  //                   height: 30,
  //                   width: 30,
  //                   decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(50),
  //                       boxShadow: const [
  //                         BoxShadow(color: Colors.black, blurRadius: 5)
  //                       ],
  //                       image: const DecorationImage(
  //                           image: NetworkImage(
  //                               'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png'),
  //                           fit: BoxFit.cover)),
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(
  //               height: 5,
  //             ),
  //             const Text(
  //               'Facebook',
  //               style: TextStyle(fontSize: 15),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // buildOr() {
  //   return Row(
  //     children: [
  //       Container(
  //         height: 1,
  //         width: 160,
  //         color: Colors.grey,
  //       ),
  //       const Text(
  //         'Or',
  //         style: TextStyle(fontSize: 15, color: Colors.grey),
  //       ),
  //       Container(
  //         height: 1,
  //         width: 160,
  //         color: Colors.grey,
  //       ),
  //     ],
  //   );
  // }

  buildTextField() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              height: 70,width: 160,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 1)),
                    hintText: 'First Name',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
              ),
            ),
            SizedBox(
              height: 70,width: 160,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 1)),
                    hintText: 'Last Name',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
              ),
            ),
          ],
        ),
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Company Name',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        const SizedBox(height: 10,),
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Email',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        const SizedBox(height: 10,),
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
      ],
    );
  }

  buildButtons(){
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 60),
                backgroundColor: blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
            ),
            onPressed: (){
              Get.to(const SignInScreen());
            }, child: const Text('Sign Up',style: TextStyle(fontSize: 15,color: Colors.white),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?',style: TextStyle(fontSize: 15,color: Colors.grey),),
            TextButton(onPressed: (){
              Get.to(const SignInScreen());
            }, child: const Text('Sign In',style: TextStyle(fontSize: 15,color: orange),))
          ],
        )
      ],
    );
  }
}
