import 'package:ecommerce_delivery_app/view/history_tabs/all_screen.dart';
import 'package:ecommerce_delivery_app/view/history_tabs/pending_screen.dart';
import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../history_tabs/completed_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [blue, lightOrange, mildOrange, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBar(),
          body: TabBarView(
              children: [AllScreen(), PendingScreen(), CompletedScreen()]),
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text(
        'History',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          70,
        ),
        child: Container(
          height: 50,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(3)),
          child: TabBar(
              labelPadding: EdgeInsets.zero,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 1),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: mildOrange),
              tabs: const [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Pending',
                ),
                Tab(
                  text: 'Completed',
                )
              ]),
        ),
      ),
    );
  }
}
