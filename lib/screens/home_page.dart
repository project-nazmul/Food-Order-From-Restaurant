import 'package:flutter/material.dart';
import 'package:food_order/designs/custom_text.dart';
import 'package:food_order/widgets/custom_app_bar.dart';
import 'package:food_order/widgets/custom_nearby_restaurant.dart';
import 'package:food_order/widgets/custom_recent_orders.dart';
import 'package:food_order/widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: CustomAppBar()
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: CustomText(fs: 25, fw: FontWeight.bold, clr: Colors.deepOrangeAccent, text: 'Recent Orders'),
          ),
          CustomRecentOrders(),
          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 10),
            child: CustomText(fs: 25, fw: FontWeight.bold, clr: Colors.deepOrangeAccent, text: 'Nearby Restaurant'),
          ),
          CustomNearbyRestaurant()

        ],
      ),
    );
  }
}
