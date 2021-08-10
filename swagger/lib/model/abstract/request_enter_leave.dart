part of swagger.api;

abstract class RequestEnterLeave {
  String getId();
  DateTime getDate();
  int getType();
  int getStatus();
}