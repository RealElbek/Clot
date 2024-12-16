import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    // Local placeholder data for offline mode
    final List<CategoryEntity> categories = [
      CategoryEntity(title: 'Hoodies', image: 'assets/images/hoodies.png'),
      CategoryEntity(title: 'Shorts', image: 'assets/images/shorts.png'),
      CategoryEntity(title: 'Shoes', image: 'assets/images/shoes.png'),
      CategoryEntity(title: 'Bags', image: 'assets/images/bag.png'),
      CategoryEntity(title: 'Accessories', image: 'assets/images/accessories.png'),
    ];

    return Column(
      children: [
        _seaAll(context),
        const SizedBox(height: 20),
        _categories(categories),
      ],
    );
  }

  Widget _seaAll(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          GestureDetector(
            onTap: () {

            },
            child: const Text(
              'See All',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categories(List<CategoryEntity> categories) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(categories[index].image),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                categories[index].title,
                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: categories.length,
      ),
    );
  }
}

// Mock CategoryEntity class for offline mode
class CategoryEntity {
  final String title;
  final String image;

  CategoryEntity({required this.title, required this.image});
}
