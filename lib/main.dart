import 'package:flutter/material.dart';
import './DataModel.dart';
import 'package:provider/provider.dart';
import './RestaurantsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DataModel(),
        child: MaterialApp(
          home: RestaurantsPage(),
        ));
  }
}
