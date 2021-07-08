class DetailedData {
  late String day;
  late String month;
  late String year;
  late DateTime time;
  late DateTime bPeriod;
  late DateTime ePeriod;

  DetailedData(
      {required this.bPeriod,
      required this.day,
      required this.ePeriod,
      required this.month,
      required this.time,
      required this.year});
}
