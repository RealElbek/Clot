import 'package:clot/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NewIn extends StatelessWidget {
  const NewIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Local placeholder data for offline mode
    final List<ProductEntity> products = [
      ProductEntity(
        id: 1,
        name: 'Product A',
        price: 39.99,
        image: 'assets/images/product1.png',
      ),
      ProductEntity(
        id: 2,
        name: 'Product B',
        price: 59.99,
        image: 'assets/images/product1.png',
      ),
      ProductEntity(
        id: 3,
        name: 'Product C',
        price: 25.99,
        image: 'assets/images/product1.png',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _newIn(),
        const SizedBox(height: 20),
        _products(products),
      ],
    );
  }

  Widget _newIn() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'New In',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.primary,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'See All',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _products(List<ProductEntity> products) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductCard(
            productEntity: products[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: products.length,
      ),
    );
  }
}

// Mock ProductEntity class for offline mode
class ProductEntity {
  final int id;
  final String name;
  final double price;
  final String image;

  ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

// Mock ProductCard widget for offline mode
class ProductCard extends StatelessWidget {
  final ProductEntity productEntity;

  const ProductCard({super.key, required this.productEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(productEntity.image),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Product name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              productEntity.name,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 4),
          // Product price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '\$${productEntity.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
