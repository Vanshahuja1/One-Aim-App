import 'package:flutter/material.dart';

class AM9 extends StatefulWidget {
  const AM9({super.key});

  @override
  State<AM9> createState() => _AM9State();
}

class _AM9State extends State<AM9> {
  bool showPartners = false;

  final List<Map<String, dynamic>> partners = [
    {"domain": "OEM Systems", "companies": ["BMW", "Mercedes-Benz", "Toyota"]},
    {"domain": "Infotainment", "companies": ["Bosch", "Panasonic", "Harman"]},
    {"domain": "Navigation", "companies": ["TomTom", "HERE", "Garmin"]},
    {"domain": "ADAS", "companies": ["NVIDIA", "Mobileye", "Velodyne"]},
    {"domain": "Cloud", "companies": ["AWS", "Azure", "Google Cloud"]},
    {"domain": "EV Platforms", "companies": ["Tesla", "BYD", "Rivian"]},
    {"domain": "Fleet", "companies": ["Geotab", "Verizon Connect", "Samsara"]},
    {"domain": "Diagnostics", "companies": ["Autel", "Snap-on", "Launch"]},
  ];

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}