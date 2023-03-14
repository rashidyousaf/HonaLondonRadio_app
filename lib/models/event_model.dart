class EventModel {
  String? id;
  String? bgImage;
  String? proImage;
  String? title;
  String? desc;

  EventModel({this.id, this.bgImage, this.proImage, this.title, this.desc});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bgImage = json['bgImage'];
    proImage = json['proImage'];
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['bgImage'] = bgImage;
    data['proImage'] = proImage;
    data['title'] = title;
    data['desc'] = desc;
    return data;
  }
}
