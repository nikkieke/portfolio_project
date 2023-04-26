
class SocialMedia {
  String? linkedin;
  String? dribble;
  String? twitter;
  String? instagram;

  SocialMedia({this.linkedin, this.dribble, this.twitter, this.instagram});

  SocialMedia.fromJson(Map<String, dynamic> json) {
    linkedin = json['linkedin'];
    dribble = json['dribble'];
    twitter = json['twitter'];
    instagram = json['instagram'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['linkedin'] = this.linkedin;
    data['dribble'] = this.dribble;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    return data;
  }
}