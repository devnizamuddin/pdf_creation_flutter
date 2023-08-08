import 'package:intl/intl.dart';

String formatCurrency(double amount) {
  return '\$${amount.toStringAsFixed(2)}';
}

String formatDate(DateTime date) {
  final format = DateFormat.yMMMd('en_US');
  return format.format(date);
}
