
class Stats {
  String? yearsExperience;
  String? projects;
  String? clients;

  Stats({this.yearsExperience, this.projects, this.clients});

  Stats.fromJson(Map<String, dynamic> json) {
    yearsExperience = json['yearsExperience'];
    projects = json['projects'];
    clients = json['clients'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yearsExperience'] = this.yearsExperience;
    data['projects'] = this.projects;
    data['clients'] = this.clients;
    return data;
  }
}