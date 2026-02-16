import 'package:intl/intl.dart';

class GymDateUtils {
  static String formatDate(String? dateStr) {
    if (dateStr == null) return 'N/A';
    final date = DateTime.tryParse(dateStr);
    if (date == null) return dateStr;
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static int daysRemaining(String? dateStr) {
    if (dateStr == null) return 0;
    final date = DateTime.tryParse(dateStr);
    if (date == null) return 0;
    return date.difference(DateTime.now()).inDays;
  }
}
