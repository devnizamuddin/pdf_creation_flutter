import '../models/product.dart';
import 'package:pdf/widgets.dart' as pw;

final lorem = pw.LoremText();

final products = <Product>[
  Product('19874', lorem.sentence(4), 3.99, 2),
  Product('98452', lorem.sentence(6), 15, 2),
  Product('28375', lorem.sentence(4), 6.95, 3),
  Product('95673', lorem.sentence(3), 49.99, 4),
  Product('23763', lorem.sentence(2), 560.03, 1),
  Product('55209', lorem.sentence(5), 26, 1),
  Product('09853', lorem.sentence(5), 26, 1),
  Product('23463', lorem.sentence(5), 34, 1),
  Product('56783', lorem.sentence(5), 7, 4),
  Product('78256', lorem.sentence(5), 23, 1),
  Product('23745', lorem.sentence(5), 94, 1),
  Product('07834', lorem.sentence(5), 12, 1),
  Product('23547', lorem.sentence(5), 34, 1),
  Product('98387', lorem.sentence(5), 7.99, 2),
];
