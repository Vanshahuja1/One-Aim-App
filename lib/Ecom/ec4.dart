import 'package:flutter/material.dart';

class Am4 extends StatefulWidget { const Am4({super.key});

@override State<Am4> createState() => _Am4State(); }

class _Am4State extends State<Am4> { int? selectedIndex;

final List<Map<String, dynamic>> solutions = [
  {
    'title': 'Custom E-commerce Development',
    'icon': Icons.code,
    'description':
    'Build a tailor-made e-commerce platform that perfectly aligns with your unique business requirements. Our custom development services ensure your online store stands out from the competition with distinctive features and seamless user experiences.',
    'features': [
      'Bespoke e-commerce website development',
      'Custom shopping cart and checkout flows',
      'Personalized product catalog management',
      'Custom pricing and promotion engines',
      'Tailored inventory management systems',
      'Unique customer account portals',
    ],
    'image': 'assets/images/3 Custom E-commerce Development.jpg',
  },
  {
    'title': 'E-commerce Platform Integration',
    'icon': Icons.layers,
    'description':
    'Seamlessly connect your e-commerce platform with essential business systems and third-party services. Our integration expertise ensures data flows smoothly across your entire business ecosystem, eliminating silos and enhancing operational efficiency.',
    'features': [
      'ERP system integration',
      'CRM integration for customer data synchronization',
      'Payment gateway integration',
      'Shipping and fulfillment system connections',
      'Inventory management system integration',
      'Marketing automation platform connections',
    ],
    'image': 'assets//images/5 E-commerce Platform Integration.jpg',
  },
  {
    'title': 'E-commerce Performance Optimization',
    'icon': Icons.speed,
    'description':
    'Enhance your e-commerce site\'s speed, responsiveness, and overall performance to provide exceptional user experiences. Our optimization services help you reduce bounce rates, increase conversions, and improve search engine rankings.',
    'features': [
      'Page load speed optimization',
      'Database query optimization',
      'Image and asset optimization',
      'Caching implementation',
      'CDN configuration',
      'Server-side rendering implementation',
    ],
    'image': 'assets/images/6 E-commerce Performance Optimization.jpg',
  },
  {
    'title': 'E-commerce Security Solutions',
    'icon': Icons.shield,
    'description':
    'Protect your e-commerce business and customer data with comprehensive security solutions. Our security services safeguard your online store against threats, ensure compliance with regulations, and build customer trust.',
    'features': [
      'PCI DSS compliance implementation',
      'Secure payment processing',
      'Data encryption and protection',
      'Fraud detection and prevention',
      'Security audits and vulnerability assessments',
      'DDoS protection and mitigation',
    ],
    'image': 'assets/images/7 E-commerce Security Solutions.jpg',
  },
  {
    'title': 'Mobile Commerce Solutions',
    'icon': Icons.smartphone,
    'description':
    'Extend your e-commerce presence to mobile devices with responsive designs or dedicated mobile apps. Our mobile commerce solutions ensure your customers enjoy seamless shopping experiences across all devices.',
    'features': [
      'Responsive e-commerce website design',
      'Progressive Web App (PWA) development',
      'Native mobile app development',
      'Mobile payment integration',
      'Push notification implementation',
      'Mobile-specific UX optimization',
    ],
    'image': 'assets/images/8 Mobile Commerce Solutions.jpg',
  },
  {
    'title': 'E-commerce Analytics & Insights',
    'icon': Icons.bar_chart,
    'description':
    'Gain valuable insights into your e-commerce performance with advanced analytics solutions. Our data-driven approach helps you understand customer behavior, optimize marketing efforts, and make informed business decisions.',
    'features': [
      'E-commerce tracking implementation',
      'Custom dashboard development',
      'Sales and conversion analytics',
      'Customer journey analysis',
      'Product performance insights',
      'Marketing channel attribution',
    ],
    'image': 'assets/images/E-commerce Analytics & Insights 2.jpg',
  },
];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Our E-commerce IT Solutions',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      const Text(
          'We offer a comprehensive suite of e-commerce IT solutions designed to address every aspect of your online business, from development and integration to optimization and security.',
        style: TextStyle(fontSize: 16),
      ),
      const SizedBox(height: 20),

      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: List.generate(solutions.length, (index) {
          return ChoiceChip(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(solutions[index]['icon'], size: 18),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    solutions[index]['title'],
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            selected: selectedIndex == index,
            onSelected: (_) {
              setState(() {
                selectedIndex = selectedIndex == index ? null : index;
              });
            },
            selectedColor: Colors.redAccent.shade100,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.grey),
            ),
          );
        }),
      ),

      const SizedBox(height: 20),

      if (selectedIndex != null)
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 8)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                solutions[selectedIndex!]['title'],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                solutions[selectedIndex!]['description'],
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text('Key Features:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              ...solutions[selectedIndex!]['features'].map<Widget>((feature) => Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(child: Text(feature)),
                    ],
                  )),
              const SizedBox(height: 16),
              Image.asset(
                solutions[selectedIndex!]['image'],
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
    ],
  ),
);

} }