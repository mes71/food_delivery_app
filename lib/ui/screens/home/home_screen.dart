import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/data.dart';
import 'package:food_delivery_app/ui/widget/recent_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.person_circle,
            size: 28,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Cart (${currentUser.cart.length})',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
        title: Text('Food Delivery'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search Food or Restaurant',
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.clear),
                  )),
            ),
          ),
          RecentOrderScreen()
        ],
      ),
    );
  }
}
