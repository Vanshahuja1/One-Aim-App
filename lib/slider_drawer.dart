import 'package:flutter/material.dart';
import 'Service/containcloud.dart';
import 'Contact/containmain.dart';
import 'Web_Service/containweb.dart';
import 'AI_Service/containai.dart';
import 'DM_Service/containdm.dart';
import 'Automobile/containam.dart';
import "Healthcare/containhc.dart";
import "Education/contained.dart";
import "Ecom/containec.dart";
import "Fin_Bank/containfb.dart";
import "Govt_Defense/containgd.dart";
import "Telecomm/containtl.dart";

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Ensure drawer width is within reasonable bounds
    final drawerWidth = (screenWidth * 0.75).clamp(280.0, 350.0);

    return Drawer(
      width: drawerWidth,
      child: SafeArea(
        child: Column(
          children: [
            // Header with constrained height
            Container(
              height: 70, // Fixed height to prevent overflow
              child: _buildDrawerHeader(context),
            ),

            // Expandable menu list with flexible height
            Expanded(
              child: SingleChildScrollView( // Prevent vertical overflow
                child: Column(
                  children: [
                    _buildServicesSection(context),
                    _buildIndustriesSection(context),
                    _buildProjectsSection(),
                    _buildPaymentSection(),
                  ],
                ),
              ),
            ),

            // Bottom buttons with constrained height
            Container(
              constraints: BoxConstraints(
                maxHeight: screenHeight * 0.2, // Max 20% of screen height
              ),
              child: _buildBottomButtons(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return Container(
      color: const Color(0xFF0D2239),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Use Flexible to prevent text overflow
          Flexible(
            child: Text(
              'OneAim',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis, // Handle long text
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white, size: 24),
            onPressed: () => Navigator.of(context).pop(),
            tooltip: 'Close Menu',
            constraints: BoxConstraints.tightFor(width: 48, height: 48),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesSection(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(Icons.build_outlined),
      title: const Text(
        'Services',
        style: TextStyle(fontWeight: FontWeight.w600),
        overflow: TextOverflow.ellipsis,
      ),
      children: [
        _drawerTile(
          context,
          'Cloud Services',
          const ContainCloud(),
          Icons.cloud_outlined,
        ),
        _drawerTile(
          context,
          'Web Development',
          const ContainWeb(),
          Icons.web_outlined,
        ),
        _drawerTile(
          context,
          'AI & ML Solutions',
          const ContainAI(),
          Icons.psychology_outlined,
        ),
        _drawerTile(
          context,
          'Digital Marketing',
          const ContainDM(),
          Icons.campaign_outlined,
        ),
      ],
    );
  }

  Widget _buildIndustriesSection(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(Icons.business_outlined),
      title: const Text(
        'Industries',
        style: TextStyle(fontWeight: FontWeight.w600),
        overflow: TextOverflow.ellipsis,
      ),
      children: [
        _drawerTile(
          context,
          'Healthcare',
          const ContainHC(),
          Icons.local_hospital_outlined,
        ),
        _drawerTile(
          context,
          'Automobile',
          const ContainAM(),
          Icons.directions_car_outlined,
        ),
        _drawerTile(
          context,
          'Telecommunication',
          const ContainTL(),
          Icons.phone_outlined,
        ),
        _drawerTile(
          context,
          'E-Commerce',
          const ContainEC(),
          Icons.shopping_cart_outlined,
        ),
        _drawerTile(
          context,
          'Education',
          const ContainED(),
          Icons.school_outlined,
        ),
        _drawerTile(
          context,
          'Finance and Banking',
          const ContainFB(),
          Icons.account_balance_outlined,
        ),
        _drawerTile(
          context,
          'Government and Defense',
          const ContainGD(),
          Icons.security_outlined,
        ),
      ],
    );
  }

  Widget _buildProjectsSection() {
    return ExpansionTile(
      leading: const Icon(Icons.folder_outlined),
      title: const Text(
        'Projects',
        style: TextStyle(fontWeight: FontWeight.w600),
        overflow: TextOverflow.ellipsis,
      ),
      children: [
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text(
            'Coming Soon',
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: const Text(
            'Project showcase will be available soon',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          enabled: false,
        ),
      ],
    );
  }

  Widget _buildPaymentSection() {
    return ExpansionTile(
      leading: const Icon(Icons.payment_outlined),
      title: const Text(
        'Payment',
        style: TextStyle(fontWeight: FontWeight.w600),
        overflow: TextOverflow.ellipsis,
      ),
      children: [
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text(
            'Coming Soon',
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: const Text(
            'Payment options will be available soon',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          enabled: false,
        ),
      ],
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Take minimum space needed
        children: [
          OutlinedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('AI Chat feature coming soon!'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            icon: const Icon(Icons.auto_awesome),
            label: const Text(
              "Let's Talk AI",
              overflow: TextOverflow.ellipsis,
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: const BorderSide(color: Colors.black),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 44),
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContainMain()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minimumSize: const Size(double.infinity, 44),
              elevation: 2,
            ),
            child: const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerTile(
      BuildContext context,
      String title,
      Widget page,
      IconData icon,
      ) {
    return ListTile(
      leading: Icon(icon, size: 20),
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.of(context).pop();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}