import 'package:flutter/material.dart';
import 'package:max_shop_1/providers/cart.dart';
import 'package:max_shop_1/providers/orders.dart';
import 'package:max_shop_1/providers/products.dart';
import 'package:max_shop_1/screens/cat_screen.dart';
import 'package:max_shop_1/screens/orders_screen.dart';
import 'package:max_shop_1/screens/product_detail_screen.dart';
import 'package:max_shop_1/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen()
        },
      ),
    );
  }
}
