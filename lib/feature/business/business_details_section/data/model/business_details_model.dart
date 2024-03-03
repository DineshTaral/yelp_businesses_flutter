import 'package:json_annotation/json_annotation.dart';

part 'business_details_model.g.dart';

@JsonSerializable()
class BusinessDetailsModel {
  String? id;
  String? alias;
  String? name;
  String? image_url;
  bool? is_claimed;
  bool? is_closed;
  String? url;
  String? phone;
  String? display_phone;
  int? review_count;
  List<Categories>? categories;
  double? rating;
  Location? location;
  Coordinates? coordinates;
  List<String>? photos;
  String? price;
  List<Hours>? hours;
  List<String>? transactions;

  BusinessDetailsModel(
      {this.id,
      this.alias,
      this.name,
      this.image_url,
      this.is_claimed,
      this.is_closed,
      this.url,
      this.phone,
      this.display_phone,
      this.review_count,
      this.categories,
      this.rating,
      this.location,
      this.coordinates,
      this.photos,
      this.price,
      this.hours,
      this.transactions});

  factory BusinessDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessDetailsModelToJson(this);
}

@JsonSerializable()
class Categories {
  String? alias;
  String? title;

  Categories({this.alias, this.title});

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class Location {
  String? address1;
  String? address2;
  String? address3;
  String? city;
  String? zipCode;
  String? country;
  String? state;
  List<String>? display_address;
  String? cross_streets;

  Location(
      {this.address1,
      this.address2,
      this.address3,
      this.city,
      this.zipCode,
      this.country,
      this.state,
      this.display_address,
      this.cross_streets});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Coordinates {
  double? latitude;
  double? longitude;

  Coordinates({this.latitude, this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}

@JsonSerializable()
class Hours {
  List<Open>? open;
  String? hours_type;
  bool? is_open_now;

  Hours({this.open, this.hours_type, this.is_open_now});

  factory Hours.fromJson(Map<String, dynamic> json) => _$HoursFromJson(json);

  Map<String, dynamic> toJson() => _$HoursToJson(this);
}

@JsonSerializable()
class Open {
  bool? is_overnight;
  String? start;
  String? end;
  int? day;

  Open({this.is_overnight, this.start, this.end, this.day});

  factory Open.fromJson(Map<String, dynamic> json) => _$OpenFromJson(json);

  Map<String, dynamic> toJson() => _$OpenToJson(this);
}
