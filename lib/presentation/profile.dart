import 'package:clot/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50), // Space for status bar
          // Profile Picture
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/images/profileimg.png'), // Replace with your image
            ),
          ),
          const SizedBox(height: 16),
          // Profile Details Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              color: const Color(0xFFF4F4F4), // Light gray background
              elevation: 0, // No shadow
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Gilbert Jones',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Gilbertjones001@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '121-224-7890',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Add edit functionality
                      },
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Menu Items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  _buildMenuItem('Address', Icons.location_on),
                  _buildMenuItem('Wishlist', Icons.favorite),
                  _buildMenuItem('Payment', Icons.payment),
                  _buildMenuItem('Help', Icons.help),
                  _buildMenuItem('Support', Icons.support),
                ],
              ),
            ),
          ),
          // Sign Out Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextButton(
              onPressed: () {
                // Add sign-out functionality
              },
              child: const Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget for Menu Items
  Widget _buildMenuItem(String title, IconData icon) {
    return Card(
      color: const Color(0xFFF4F4F4), // Light gray background
      elevation: 0, // No shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.grey,
        ),
        onTap: () {
          // Add navigation or action
        },
      ),
    );
  }
}
