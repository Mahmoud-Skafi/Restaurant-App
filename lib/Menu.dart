class Menu {
  int id;
  String name;
  String descr;
  int price;
  String image;

  Menu({this.id, this.name, this.descr, this.price, this.image});
  factory Menu.fromJson(dynamic json) {
    return Menu(
      id: json['id'] as int,
      name: json['name'] as String,
      descr: json['descr'] as String,
      price: json['price'] as int,
      image: json['image'] as String,
    );
  }
}
