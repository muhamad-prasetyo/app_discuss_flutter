import 'package:intl/intl.dart';

class AppFormat {
  static String infoNumber(double number) {
    return NumberFormat.compact().format(number);
  }

  // function fulldatetime
  static String fullDateTime(String date) {
    return DateFormat('EEE, d MM yy | HH:mm').format(DateTime.parse(date));
  }

  static String publish(String date) {
    DateTime dateTime = DateTime.parse(date);
    DateTime now = DateTime.now();
    DateTime yesterday = now.subtract(const Duration(days: 1));

    // pengecekan
    if (dateTime.isBefore(yesterday)) {
      return fullDateTime(date);
    } else // jika datanya belum lewat hari kemarin
    {
      int hour = now.difference(dateTime).inHours;
      if (hour >= 1) {
        return '$hour hour ago';
      } else {
        int minute = now.difference(dateTime).inMinutes;
        if (minute >= 1) {
          return '$minute minute ago';
        } else {
          int second = now.difference(dateTime).inSeconds;
          second = second < 0 ? 1 : second; // cek jika -1 detik yg lalu
          return '$second second ago';
        }
      }
    }
  }
}
