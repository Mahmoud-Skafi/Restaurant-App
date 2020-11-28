class Restaurant {
  int id;
  String name;
  String city;
  String image;
  int rating;

  Restaurant({this.id, this.name, this.city, this.image, this.rating});
  factory Restaurant.fromJson(dynamic json) {
    return Restaurant(
      id: json['id'] as int,
      name: json['name'] as String,
      city: json['city'] as String,
      image: json['image'] as String,
      rating: json['rating'] as int,
    );
  }
}

// @override
// String toString() {
//   return 'Product{productName: $productName, quantity: $quantity, price: $price}';
// }
