import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './DataModel.dart';
import './Restaurant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<RestaurantsPage> {
  @override
  void initState() {
    super.initState();
    fetchRestaurants();
  }

  void fetchRestaurants() async {
    http.Response response =
        await http.get('http://appback.ppu.edu/restaurants/');
    List<Restaurant> restaurants = [];
    if (response.statusCode == 200) {
      var jsonArray = jsonDecode(response.body) as List;

      restaurants = jsonArray.map((e) => Restaurant.fromJson(e)).toList();
      context.read<DataModel>().setRestaurants(restaurants);
//      setState(() {
//        _invoiceNo = invoices.last.invoiceNo+1;
//      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tsq")),
      body: Consumer<DataModel>(
        builder: (context, value, child) {
          List<Restaurant> allRestaurant = value.allRestaurants;
          return Container(
            height: 5000,
            child: ListView.builder(
              itemCount: allRestaurant.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Text(allRestaurant[index].name),
                    Text(allRestaurant[index].city),
                    Text(allRestaurant[index].image),
                    Text(allRestaurant[index].rating.toString()),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
