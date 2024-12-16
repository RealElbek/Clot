import 'package:clot/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Image.asset(
                    height: 100,
                    width: 100,
                    "assets/icons/bell.png",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "No Notification yet",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      minimumSize: const Size(185, 52),
                    ),
                    onPressed: () {
                      /* Navigator.pushReplacementNamed(context,RouteNames.FirstPage);*/
                    },
                    child: const Text(
                      "Explore Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
