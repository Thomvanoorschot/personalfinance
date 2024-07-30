
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:intl/intl.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

String epochToDateString(Timestamp ts){
  final dateTime = DateTime.fromMillisecondsSinceEpoch(
      ts.seconds.toInt() * 1000);
  return DateFormat('d MMM yyyy').format(dateTime);
}

Timestamp dateTimeToProtoTimestamp(DateTime dateTime) {
  Timestamp timestamp = Timestamp();
  timestamp.seconds = $fixnum.Int64(dateTime.millisecondsSinceEpoch ~/ 1000);
  return timestamp;
}