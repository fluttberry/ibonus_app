class StoreModel {
  int? totalCount;
  int? count;
  int? totalPages;
  Null next;
  Null previous;
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
        results!.add(Results.fromJson(v));
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
  double? cashbackPercent;
  double? interestRate;
  String? type;
  String? whatsapp;
  String? telegram;
  String? instagram;
  bool? isMain;
  String? logo;
  double? bonusesForJoining;
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
        advantages!.add(Advantages.fromJson(v));
      });
    }
    
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
    city = json['city'] != null ? City.fromJson(json['city']) : null;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (advantages != null) {
      data['advantages'] = advantages!.map((v) => v.toJson()).toList();
    }
   
    if (country != null) {
      data['country'] = country!.toJson();
    }
    if (city != null) {
      data['city'] = city!.toJson();
    }
    data['thumbnail_announcement_photo'] = thumbnailAnnouncementPhoto;
    data['medium_announcement_photo'] = mediumAnnouncementPhoto;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['name'] = name;
    data['address'] = address;
    data['store_uuid'] = storeUuid;
    data['type_of_bonus_system'] = typeOfBonusSystem;
    data['cashback_percent'] = cashbackPercent;
    data['interest_rate'] = interestRate;
    data['type'] = type;
    data['whatsapp'] = whatsapp;
    data['telegram'] = telegram;
    data['instagram'] = instagram;
    data['is_main'] = isMain;
    data['logo'] = logo;
    data['bonuses_for_joining'] = bonusesForJoining;
    data['in_announcement'] = inAnnouncement;
    data['announcement_photo'] = announcementPhoto;
    data['user'] = user;
    data['main_store'] = mainStore;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['region'] = region;
    return data;
  }
}
