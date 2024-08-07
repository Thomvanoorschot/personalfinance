
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:intl/intl.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

String epochToDateString(Timestamp ts){
  final dateTime = DateTime.fromMillisecondsSinceEpoch(
      ts.seconds.toInt() * 1000);
  return DateFormat('d MMM yyyy').format(dateTime);
}


String epochToMonthAbbreviation(Timestamp ts) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(ts.seconds.toInt() * 1000);
  return DateFormat('MMM').format(dateTime);
}
String convertTimestampToWeekNumber(Timestamp ts) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(ts.seconds.toInt() * 1000);
  int weekNumber = calculateWeekNumber(dateTime);
  return '$weekNumber';
}
String epochToDayAbbreviation(Timestamp ts) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(ts.seconds.toInt() * 1000);
  return DateFormat('E').format(dateTime);
}
Timestamp dateTimeToProtoTimestamp(DateTime dateTime) {
  Timestamp timestamp = Timestamp();
  timestamp.seconds = $fixnum.Int64(dateTime.millisecondsSinceEpoch ~/ 1000);
  return timestamp;
}
int calculateWeekNumber(DateTime date) {
  DateTime firstDayOfYear = DateTime(date.year, 1, 1);
  int daysSinceFirstDay = date.difference(firstDayOfYear).inDays;
  int weekNumber = (daysSinceFirstDay / 7).ceil();
  return weekNumber;
}