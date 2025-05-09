import 'package:flutter/material.dart';
import 'Contact/containmain.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      // Added SafeArea here
      child: Container(
        height: screenWidth < 600 ? 60 : 70,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.blue.shade800, // Light grey background
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Company Logo
            SizedBox(
              width: screenWidth < 600 ? 40 : 50,
              height: screenWidth < 600 ? 80 : 90,
              child: Image.asset('assets/logo2.png'), // Replace with your logo
            ),

            // Contact Us Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainMain(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Contact Us',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Hamburger Icon to open drawer
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                iconSize: screenWidth < 600 ? 24 : 30,
                onPressed: () {
                  Scaffold.of(context)
                      .openEndDrawer(); // Opens the CustomDrawer from parent Scaffold
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
