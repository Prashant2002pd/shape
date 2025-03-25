import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'SHAPE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(height: 1),
            const SizedBox(height: 30),
            
            // Drawer menu items
            _buildDrawerItem(context, Icons.person_outline, 'Profile'),
            const SizedBox(height: 30),
            
            _buildDrawerItem(context, Icons.insights, 'Insights'),
            const SizedBox(height: 30),
            
            _buildDrawerItem(context, Icons.calendar_today, 'Privacy Policy'),
            const SizedBox(height: 30),
            
            _buildDrawerItem(context, Icons.share_outlined, 'Invite friends to SHAPE'),
            const SizedBox(height: 30),
            
            _buildDrawerItem(context, Icons.logout, 'Logout'),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title) {
    return GestureDetector(
      onTap: () {
        // Handle navigation or action
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$title clicked'))
        );
        Navigator.pop(context); // Close drawer
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            Icon(icon, size: 24),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

