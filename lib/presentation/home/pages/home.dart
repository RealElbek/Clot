import 'package:clot/presentation/home/pages/orders.dart';
import 'package:clot/presentation/home/widgets/bottom_nav.dart';
import 'package:clot/presentation/profile.dart';
import 'package:flutter/material.dart';
import 'package:clot/presentation/notification/notifications.dart';
import '../widgets/categories.dart';
import '../widgets/header.dart';
import '../widgets/new_in.dart';
import '../widgets/search_field.dart';
import '../widgets/top_selling.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const NotificationPage(),
    OrderScreen(),
    ProfileScreen(),
  ];

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          SizedBox(height: 24),
          SearchField(),
          SizedBox(height: 24),
          Categories(),
          SizedBox(height: 24),
          TopSelling(),
          SizedBox(height: 24),
          NewIn(),
        ],
      ),
    );
  }
}
