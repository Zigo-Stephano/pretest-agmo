class Event {
  String? date;
  String? title;
  String? location;
  String? slot;

  Event({this.date, this.title, this.location, this.slot});

  Event.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    title = json['title'];
    location = json['location'];
    slot = json['slot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['title'] = title;
    data['location'] = location;
    data['slot'] = slot;
    return data;
  }
}
