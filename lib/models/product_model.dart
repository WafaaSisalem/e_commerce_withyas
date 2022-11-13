class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.isFav,
    required this.isInCart,
    required this.price,
    required this.imagePath,
  });
  late int id;
  late String name;
  late double price;
  late String imagePath;
  late bool isFav;
  late bool isInCart;
  ProductModel.fromMap({required Map map}) {
    id = map['id'];
    name = map['name'];
    price = map['price'];
    imagePath = map['imagePath'];
    isFav = map['isFav'];
    isInCart = map['isInCart'];
  }
  toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'ImagePath': imagePath,
      'isFav': isFav,
      'isInCart': isInCart,
    };
  }
}
