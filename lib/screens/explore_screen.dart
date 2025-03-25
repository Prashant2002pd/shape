import 'package:flutter/material.dart';

class Category {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  Category({
    required this.title,
    required this.icon,
    required this.backgroundColor,
  });
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final List<Category> categories = [
    Category(
      title: 'Understanding Emotions',
      icon: Icons.card_giftcard,
      backgroundColor: const Color(0xFFF8E9A1),
    ),
    Category(
      title: 'Parenting',
      icon: Icons.wb_sunny,
      backgroundColor: const Color(0xFFF8D7DA),
    ),
    Category(
      title: 'Bullying',
      icon: Icons.psychology,
      backgroundColor: const Color(0xFFD1ECF1),
    ),
    Category(
      title: 'Addictions',
      icon: Icons.medical_services,
      backgroundColor: const Color(0xFFE2D9E7),
    ),
    Category(
      title: 'Stress/Anxiety',
      icon: Icons.favorite,
      backgroundColor: const Color(0xFFF8D7DA),
    ),
    Category(
      title: 'Relationship',
      icon: Icons.handshake,
      backgroundColor: const Color(0xFFD1ECF1),
    ),
    Category(
      title: 'Personality',
      icon: Icons.accessibility_new,
      backgroundColor: const Color(0xFFF8E9A1),
    ),
    Category(
      title: 'Grief/Trauma',
      icon: Icons.accessibility_new,
      backgroundColor: const Color(0xFFF8D7DA),
    ),
    Category(
      title: 'Mental Ailments',
      icon: Icons.psychology,
      backgroundColor: const Color(0xFFD1ECF1),
    ),
    Category(
      title: 'SelfHarm',
      icon: Icons.person,
      backgroundColor: const Color(0xFFF8D7DA),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Feeling Lost',
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Title
              const Text(
                'Curated Collections by Shape',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A6572),
                ),
              ),
              const SizedBox(height: 16),
              // Categories list
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: CategoryCard(
                        category: categories[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NoDataPage(title: categories[index].title),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: category.backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Icon(category.icon, size: 32),
            const SizedBox(width: 16),
            Text(
              category.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color(0xFF4A4A4A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoDataPage extends StatelessWidget {
  final String title;

  const NoDataPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.folder_open,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No data available',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'This section is currently under development',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}