import 'package:pdf_creation_flutter/utils/formatter.dart';

class Product {
  const Product(
    this.sku,
    this.productName,
    this.price,
    this.quantity,
  );

  final String sku;
  final String productName;
  final double price;
  final int quantity;
  double get total => price * quantity;

  String getIndex(int index) {
    switch (index) {
      case 0:
        return sku;
      case 1:
        return productName;
      case 2:
        return formatCurrency(price);
      case 3:
        return quantity.toString();
      case 4:
        return formatCurrency(total);
    }
    return '';
  }
}
