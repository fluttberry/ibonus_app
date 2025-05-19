class CityModel {
  int? totalCount;
  int? count;
  int? totalPages;
  String? next;
  String? previous;
  List<CityResults>? results;

  CityModel(
      {this.totalCount,
      this.count,
      this.totalPages,
      this.next,
      this.previous,
      this.results});

  CityModel.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    count = json['count'];
    totalPages = json['total_pages'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <CityResults>[];
      json['results'].forEach((v) {
        results!.add( CityResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['count'] = this.count;
    data['total_pages'] = this.totalPages;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CityResults {
  int? id;
  Region? region;
  String? name;
  double? longitude;
  double? latitude;

  CityResults({this.id, this.region, this.name, this.longitude, this.latitude});

  CityResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    region =
        json['region'] != null ? new Region.fromJson(json['region']) : null;
    name = json['name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.region != null) {
      data['region'] = this.region!.toJson();
    }
    data['name'] = this.name;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    return data;
  }
}

class Region {
  int? id;
  Country? country;
  String? name;

  Region({this.id, this.country, this.name});

  Region.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['name'] = this.name;
    return data;
  }
}

class Country {
  int? id;
  String? name;
  String? alpha2Code;
  String? alpha3Code;
  double? longitude;
  double? latitude;

  Country(
      {this.id,
      this.name,
      this.alpha2Code,
      this.alpha3Code,
      this.longitude,
      this.latitude});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alpha2Code = json['alpha2_code'];
    alpha3Code = json['alpha3_code'];
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alpha2_code'] = this.alpha2Code;
    data['alpha3_code'] = this.alpha3Code;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    return data;
  }
}
