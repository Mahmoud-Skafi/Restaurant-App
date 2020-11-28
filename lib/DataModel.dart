import 'package:flutter/cupertino.dart';

import 'Menu.dart';
import './Restaurant.dart';

class DataModel extends ChangeNotifier {
  List<Menu> favouriteMenus = [];
  List<Menu> orderedMenus = [];
  List<Restaurant> allRestaurants = [];
  // int _selectedIndex = 0;

  void setFavourites(List<Menu> newFavourite) {
    favouriteMenus = newFavourite;
    notifyListeners();
  }

  void setRestaurants(List<Restaurant> newRestaurant) {
    allRestaurants = newRestaurant;
    notifyListeners();
  }

  void setOrders(List<Menu> newOrder) {
    orderedMenus = newOrder;
    notifyListeners();
  }

  void addFavourite(Menu newMenu) {
    favouriteMenus.add(newMenu);
    notifyListeners();
  }

  void removeFavourite(int id) {
    for (var i = 0; i < favouriteMenus.length; i++) {
      if (favouriteMenus[i].id == id) {
        favouriteMenus.removeAt(i);
        break;
      }
    }
    notifyListeners();
  }

  void addOrder(Menu newOrder) {
    orderedMenus.add(newOrder);
    notifyListeners();
  }

  void removeOrder(int id) {
    for (var i = 0; i < orderedMenus.length; i++) {
      if (orderedMenus[i].id == id) {
        orderedMenus.removeAt(i);
        break;
      }
    }
    notifyListeners();
  }

  // List<Menu> get invoices => invoices;
  // Menu get selectedInvoice => _invoices[_selectedIndex];
  // int get length => _invoices.length;

  // void add(Menu invoice) {
  //   _invoices.add(invoice);
  //   notifyListeners();
  // }

  // void remove(Menu value) {
  //   _invoices.remove(value);
  //   notifyListeners();
  // }
}
