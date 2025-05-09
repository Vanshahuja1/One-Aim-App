import 'package:flutter/material.dart';
import 'header.dart';
import 'slider_drawer.dart'; // CustomDrawer is defined here
import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';
import 'home5.dart';
import 'home6.dart';
import 'home7.dart';
import 'home8.dart';
import 'home9.dart';
import 'home10.dart';
import 'home11.dart';
import 'footer.dart';
class ContainMain extends StatelessWidget {
  const ContainMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            
            Demo1(),
            ServiceCardsSection(),
            HomeSection(),
            Home4(),
            //Home5(),
            //Home6(),
            Home7(),
            Home8(),
            Home9(),
            Home10(),
            Home11(),
            Footer(),
            // Other sections...
          ],
        ),
      ),
    );
  }
}