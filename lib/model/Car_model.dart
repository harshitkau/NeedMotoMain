class Product {
  final int id;
  final String productName;
  final String productImage;
  final String productDescription;
  final double price;
  final double rate;

  Product({
    required this.id,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.price,
    required this.rate,
});
}

class Seats {
  final String seats;

  Seats({
    required this.seats
});
}