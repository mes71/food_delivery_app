import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/models/order.dart';

class RecentOrderScreen extends StatelessWidget {
  const RecentOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Order',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 120,
          color: Colors.deepOrange,
          child: ListView.builder(
              itemBuilder: (context, index) =>
                  _buildItemListRecentOrders(currentUser.orders[index]),
              itemCount: currentUser.orders.length),
        )
      ],
    );
  }
}

_buildItemListRecentOrders(Order order) {
  return Container(
    width: 320,
  );
}
