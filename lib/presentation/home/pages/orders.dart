import 'package:clot/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TabBarSection(),
          SizedBox(height: 20),
          Expanded(child: OrderList()),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

class TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: DefaultTabController(
        length: 5,
        child: TabBar(
          tabAlignment: TabAlignment.start,
          dividerColor: Colors.transparent,
          isScrollable: true,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primary,
          ),
          tabs: List.generate(
            5,
            (index) => Container(
              height: 30,
              width: 80,
              alignment: Alignment.center,
              child: Text(
                [
                  'Processing',
                  'Shipped',
                  'Delivered',
                  'Returned',
                  'Canceled'
                ][index],
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {'id': '#456765', 'items': 4},
    {'id': '#454569', 'items': 2},
    {'id': '#454809', 'items': 1},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(Icons.inventory, color: Colors.grey),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Order ${orders[index]['id']}',
                        style: TextStyle(fontSize: 16)),
                    Text('${orders[index]['items']} items',
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
        );
      },
    );
  }
}
