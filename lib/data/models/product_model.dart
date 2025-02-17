class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl; 

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl, 
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['ID'],
      name: json['Name'],
      description: json['Description'],
      price: json['Price'].toDouble(),
      imageUrl: json['ImageURL'], 
    );
  }
}