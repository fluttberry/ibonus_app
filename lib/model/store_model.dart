class StoreModel {
  int? totalCount;
  int? count;
  int? totalPages;
  Null? next;
  Null? previous;
  List<Results>? results;

  StoreModel(
      {this.totalCount,
      this.count,
      this.totalPages,
      this.next,
      this.previous,
      this.results});

  StoreModel.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    count = json['count'];
    totalPages = json['total_pages'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
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

class Results {
  int? id;
  List<Advantages>? advantages;

  Country? country;
  City? city;
  String? thumbnailAnnouncementPhoto;
  String? mediumAnnouncementPhoto;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? address;
  String? storeUuid;
  String? typeOfBonusSystem;
  int? cashbackPercent;
  int? interestRate;
  String? type;
  String? whatsapp;
  String? telegram;
  String? instagram;
  bool? isMain;
  String? logo;
  int? bonusesForJoining;
  bool? inAnnouncement;
  String? announcementPhoto;
  int? user;
  int? mainStore;

  Results(
      {this.id,
      this.advantages,

      this.country,
      this.city,
      this.thumbnailAnnouncementPhoto,
      this.mediumAnnouncementPhoto,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.address,
      this.storeUuid,
      this.typeOfBonusSystem,
      this.cashbackPercent,
      this.interestRate,
      this.type,
      this.whatsapp,
      this.telegram,
      this.instagram,
      this.isMain,
      this.logo,
      this.bonusesForJoining,
      this.inAnnouncement,
      this.announcementPhoto,
      this.user,
      this.mainStore});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['advantages'] != null) {
      advantages = <Advantages>[];
      json['advantages'].forEach((v) {
        advantages!.add(new Advantages.fromJson(v));
      });
    }
    
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    thumbnailAnnouncementPhoto = json['thumbnail_announcement_photo'];
    mediumAnnouncementPhoto = json['medium_announcement_photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    address = json['address'];
    storeUuid = json['store_uuid'];
    typeOfBonusSystem = json['type_of_bonus_system'];
    cashbackPercent = json['cashback_percent'];
    interestRate = json['interest_rate'];
    type = json['type'];
    whatsapp = json['whatsapp'];
    telegram = json['telegram'];
    instagram = json['instagram'];
    isMain = json['is_main'];
    logo = json['logo'];
    bonusesForJoining = json['bonuses_for_joining'];
    inAnnouncement = json['in_announcement'];
    announcementPhoto = json['announcement_photo'];
    user = json['user'];
    mainStore = json['main_store'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.advantages != null) {
      data['advantages'] = this.advantages!.map((v) => v.toJson()).toList();
    }
   
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['thumbnail_announcement_photo'] = this.thumbnailAnnouncementPhoto;
    data['medium_announcement_photo'] = this.mediumAnnouncementPhoto;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    data['address'] = this.address;
    data['store_uuid'] = this.storeUuid;
    data['type_of_bonus_system'] = this.typeOfBonusSystem;
    data['cashback_percent'] = this.cashbackPercent;
    data['interest_rate'] = this.interestRate;
    data['type'] = this.type;
    data['whatsapp'] = this.whatsapp;
    data['telegram'] = this.telegram;
    data['instagram'] = this.instagram;
    data['is_main'] = this.isMain;
    data['logo'] = this.logo;
    data['bonuses_for_joining'] = this.bonusesForJoining;
    data['in_announcement'] = this.inAnnouncement;
    data['announcement_photo'] = this.announcementPhoto;
    data['user'] = this.user;
    data['main_store'] = this.mainStore;
    return data;
  }
}

class Advantages {
  int? id;
  String? name;
  String? description;

  Advantages({this.id, this.name, this.description});

  Advantages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
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

class City {
  int? id;
  String? name;
  double? longitude;
  double? latitude;
  int? region;

  City({this.id, this.name, this.longitude, this.latitude, this.region});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    region = json['region'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['region'] = this.region;
    return data;
  }
}
