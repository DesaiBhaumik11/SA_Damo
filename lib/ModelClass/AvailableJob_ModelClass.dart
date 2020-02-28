

 List<AvailableJob> parseJob() {

 }
 class JobOnDate{
  String date;
  AvailableJob availableJob;

  JobOnDate({this.date, this.availableJob});

  factory JobOnDate.fromJson(Map<String, dynamic> json) {
    return JobOnDate(
      date: json['date'] as String,

    );
  }
 }
class AvailableJob{
  String title;
  String subtitle;
  double price;
  String time;

  AvailableJob({this.title, this.subtitle, this.price, this.time});

  factory AvailableJob.fromJson(Map<String, dynamic> json){
    return AvailableJob(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      price: json['price'] as double,
      time: json['time'] as String,
    );
  }
}