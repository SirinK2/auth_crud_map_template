class ProductModel {
  final String? id;
  final String productName;
  final String productDescription;
  final double productPrice;
  final String productImage;

  ProductModel({
    this.id,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productImage,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      productName: json['productName'],
      productDescription: json['productDescription'],
      productPrice: json['productPrice'],
      productImage: json['productImage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productName': productName,
      'productDescription': productDescription,
      'productPrice': productPrice,
      'productImage': productImage,
    };
  }
}
