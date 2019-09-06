import 'package:flutter/material.dart';
import 'package:max_shop_1/providers/orders.dart' show Orders;
import 'package:max_shop_1/widgets/app_drawer.dart';
import 'package:max_shop_1/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final ordersDate = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your order\'s'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: ordersDate.orders.length,
        itemBuilder: (BuildContext context, int i) {
          return OrderItem(ordersDate.orders[i]);
        },
      ),
    );
  }
}
