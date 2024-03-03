import 'package:json_annotation/json_annotation.dart';

part 'business_list_model.g.dart';

@JsonSerializable()
class BusinessListModel {
  List<Businesses>? businesses;
  int? total;
  Region? region;

  BusinessListModel({this.businesses, this.total, this.region});

  factory BusinessListModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessListModelFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessListModelToJson(this);
}

@JsonSerializable()
class Businesses {
  String? id;
  String? name;
  String? image_url;
  bool? is_closed;
  String? url;
  int? review_count;
  List<Categories>? categories;
  double? rating;
  Coordinates? coordinates;
  List<String>? transactions;
  String? price;
  Location? location;
  String? phone;

  Businesses({
    this.id,
    this.name,
    this.image_url,
    this.is_closed,
    this.url,
    this.review_count,
    this.categories,
    this.rating,
    this.coordinates,
    this.transactions,
    this.price,
    this.location,
    this.phone,
  });

  factory Businesses.fromJson(Map<String, dynamic> json) =>
      _$BusinessesFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessesToJson(this);
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
class Coordinates {
  double? latitude;
  double? longitude;

  Coordinates({this.latitude, this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
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

  Location(
      {this.address1,
      this.address2,
      this.address3,
      this.city,
      this.zipCode,
      this.country,
      this.state,
      this.display_address});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Region {
  Coordinates? center;

  Region({this.center});

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  Map<String, dynamic> toJson() => _$RegionToJson(this);
}
