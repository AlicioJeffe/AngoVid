class Data {
  int confirmed;
  int suspects;
  int recovered;
  int deaths;
  String createdAt;
  String updatedAt;

  Data(
      {this.confirmed,
      this.suspects,
      this.recovered,
      this.deaths,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    confirmed = json['confirmed'];
    suspects = json['suspects'];
    recovered = json['recovered'];
    deaths = json['deaths'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['confirmed'] = this.confirmed;
    data['suspects'] = this.suspects;
    data['recovered'] = this.recovered;
    data['deaths'] = this.deaths;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
