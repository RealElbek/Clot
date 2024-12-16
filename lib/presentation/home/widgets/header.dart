import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // Local placeholder user data for offline mode
    final UserEntity user = UserEntity(
      name: 'John Doe',
      gender: 1,
      image: '',
    );

    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _profileImage(user, context),
          _gender(user),
          _card(context),
        ],
      ),
    );
  }

  Widget _profileImage(UserEntity user, BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: user.image.isEmpty
                ? const AssetImage('assets/images/profile.png') // Local placeholder
                : AssetImage('assets/images/profile.png'), // Fallback to local asset
          ),
          color: Colors.red,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _gender(UserEntity user) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200, // Replace AppColors.secondBackground
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Center(
            child: Text(
              user.gender == 1 ? 'Men' : 'Women',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              'assets/icons/arrow.svg', // Local SVG asset
              fit: BoxFit.none,
            ),
          )
        ],
      ),
    );
  }

  Widget _card(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Replace navigation with a placeholder action

      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Colors.blue, // Replace AppColors.primary
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/bag.svg', // Local SVG asset
          fit: BoxFit.none,
        ),
      ),
    );
  }
}

// Mock UserEntity class for offline mode
class UserEntity {
  final String name;
  final int gender; // 1 for Men, 0 for Women
  final String image;

  UserEntity({required this.name, required this.gender, required this.image});
}
