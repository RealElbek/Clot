import 'package:clot/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, // White background
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primary, // Clicked icon color
        unselectedItemColor: Colors.grey, // Default icon color
        items: [
          _buildNavItem('assets/icons/home.svg', 'Home', 0),
          _buildNavItem('assets/icons/notification.svg', 'Categories', 1),
          _buildNavItem('assets/icons/categegory.svg', 'Cart', 2),
          _buildNavItem('assets/icons/profile.svg', 'Profile', 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String iconPath, String label, int index) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        color: widget.currentIndex == index ? AppColors.primary : Colors.grey,
      ),
      label: label,
    );
  }
}

