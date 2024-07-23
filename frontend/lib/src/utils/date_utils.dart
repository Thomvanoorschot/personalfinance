
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:intl/intl.dart';

String epochToDateString(Timestamp ts){
  final dateTime = DateTime.fromMillisecondsSinceEpoch(
      ts.seconds.toInt() * 1000);
  return DateFormat('d MMM yyyy').format(dateTime);
}
