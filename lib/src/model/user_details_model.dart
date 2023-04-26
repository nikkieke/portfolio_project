
import 'package:portfolio_project/src/model/social_media_model.dart';
import 'package:portfolio_project/src/model/stat_model.dart';

class User {
  String? name;
  String? basedIn;
  String? profileImg;
  String? about;
  String? intro;
  Stats? stats;
  List<String>? projects;
  SocialMedia? socialMedia;

  User(
      {this.name,
        this.basedIn,
        this.profileImg,
        this.about,
        this.intro,
        this.stats,
        this.projects,
        this.socialMedia});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    basedIn = json['basedIn'];
    profileImg = json['profileImg'];
    about = json['about'];
    intro = json['intro'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    projects = json['projects'].cast<String>();
    socialMedia = json['socialMedia'] != null
        ? new SocialMedia.fromJson(json['socialMedia'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['basedIn'] = this.basedIn;
    data['profileImg'] = this.profileImg;
    data['about'] = this.about;
    data['intro'] = this.intro;
    if (this.stats != null) {
      data['stats'] = this.stats!.toJson();
    }
    data['projects'] = this.projects;
    if (this.socialMedia != null) {
      data['socialMedia'] = this.socialMedia!.toJson();
    }
    return data;
  }
}



