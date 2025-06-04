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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_count'] = totalCount;
    data['count'] = count;
    data['total_pages'] = totalPages;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
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
        json['region'] != null ? Region.fromJson(json['region']) : null;
    name = json['name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (region != null) {
      data['region'] = region!.toJson();
    }
    data['name'] = name;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
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
        json['country'] != null ? Country.fromJson(json['country']) : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    data['name'] = name;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['alpha2_code'] = alpha2Code;
    data['alpha3_code'] = alpha3Code;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    return data;
  }
}
