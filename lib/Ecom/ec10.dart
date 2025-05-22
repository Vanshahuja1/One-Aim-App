import 'package:flutter/material.dart';

class Cloud4 extends StatelessWidget {
  const Cloud4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'E-commerce Success Stories',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Explore how our e-commerce IT solutions have helped businesses like yours achieve remarkable results.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              successCard(
                imageUrl: 'assets/images/Luxury Fashion Retailer Platform Overhaul1.jpg',
                domain: 'Fashion Retail',
                title: 'Luxury Fashion Retailer Platform Overhaul',
                description:
                'Redesigned and rebuilt a high-end fashion retailer\'s e-commerce platform, implementing advanced product visualization, personalized recommendations, and seamless omnichannel experiences. The new platform resulted in a 78% increase in mobile conversions and 45% higher average order value.',
                stats: [
                  {'label': 'Mobile Conversion Increase', 'value': '78%'},
                  {'label': 'Average Order Value Growth', 'value': '45%'},
                  {'label': 'Page Load Speed Improvement', 'value': '65%'},
                ],
              ),
              successCard(
                imageUrl: 'assets/images/B2B Wholesale Platform Integration.jpg',
                domain: 'Manufacturing',
                title: 'B2B Wholesale Platform Integration',
                description:
                'Developed a comprehensive B2B e-commerce solution for a manufacturing company, integrating with their ERP, CRM, and inventory management systems. The platform streamlined ordering processes for distributors and reduced order processing time by 85%, while increasing order accuracy to 99.8%.',
                stats: [
                  {'label': 'Order Processing Time Reduction', 'value': '85%'},
                  {'label': 'Order Accuracy', 'value': '99.8%'},
                  {'label': 'Distributor Adoption Rate', 'value': '94%'},
                ],
              ),
              successCard(
                imageUrl: 'assets/images/Multi-vendor Marketplace Launch.jpg',
                domain: 'Retail',
                title: 'Multi-vendor Marketplace Launch',
                description:
                'Built a scalable multi-vendor marketplace for a retail company, enabling them to expand their product offerings without inventory investment. The platform included vendor onboarding, commission management, and integrated fulfillment. Within 6 months, the marketplace grew to 150+ vendors and increased revenue by 120%.',
                stats: [
                  {'label': 'Vendor Growth', 'value': '150+'},
                  {'label': 'Revenue Increase', 'value': '120%'},
                  {'label': 'Product Catalog Expansion', 'value': '10x'},
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget successCard({
    required String imageUrl,
    required String domain,
    required String title,
    required String description,
    required List<Map<String, String>> stats,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              domain,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: stats.map((stat) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    stat['value']!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    stat['label']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              );
            }).toList(),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Read full case study',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
