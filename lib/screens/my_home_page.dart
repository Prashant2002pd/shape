import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildVideoPlayerCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
                children: [
                  const Center(
                    child: Text(
                      'Unable to load video',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 16,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: CircularProgressIndicator(
                        value: null, // Indeterminate progress
                        backgroundColor: Colors.white,
                        strokeWidth: 3,
                        color: Colors.purple.shade300,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Feeling today card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFEE1E1), // Light pink
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How are you feeling today?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildMoodIcon(Colors.red.shade300, '😖'),
                      _buildMoodIcon(Colors.orange.shade300, '😔'),
                      _buildMoodIcon(Colors.blue.shade300, '😐'),
                      _buildMoodIcon(Colors.cyan.shade300, '🙂'),
                      _buildMoodIcon(Colors.green.shade300, '😄'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          _buildVideoPlayerCard(),

          // AI support card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Get expert support with AI-driven care',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple.shade300,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Coming Soon',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_forward, size: 18),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset('assets/images/ai.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Explore card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Explore, understand, evolve',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Trackers and tools to stay on top of your health',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF666666),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset('assets/images/pngegg.png')
                      ),
                    ),
                  
                ],
              ),
            ),
          ),

          

          // Ambient Sound section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ambient Sound',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildSoundCard('assets/images/rain.jpg', 'Rain and thunder'),
                      _buildSoundCard('assets/images/bird.webp', 'Birds waking up'),
                      _buildSoundCard('assets/images/forest.jpg', 'Forest sounds'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Recommended for you section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildRecommendationCard('assets/images/family.avif', 'Parenting Ethos'),
                      _buildRecommendationCard('assets/images/Emotions.webp', 'Decoding Emotions'),
                      _buildRecommendationCard('assets/images/Safety.webp', 'Digital Safety First'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoodIcon(Color color, String emoji) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildSoundCard(String imagePath, String title) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.headset,
              color: Colors.white,
              size: 24,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(String imagePath, String title) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}