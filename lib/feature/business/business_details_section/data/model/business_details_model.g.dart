// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessDetailsModel _$BusinessDetailsModelFromJson(
        Map<String, dynamic> json) =>
    BusinessDetailsModel(
      id: json['id'] as String?,
      alias: json['alias'] as String?,
      name: json['name'] as String?,
      image_url: json['image_url'] as String?,
      is_claimed: json['is_claimed'] as bool?,
      is_closed: json['is_closed'] as bool?,
      url: json['url'] as String?,
      phone: json['phone'] as String?,
      display_phone: json['display_phone'] as String?,
      review_count: json['review_count'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: json['price'] as String?,
      hours: (json['hours'] as List<dynamic>?)
          ?.map((e) => Hours.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BusinessDetailsModelToJson(
        BusinessDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'name': instance.name,
      'image_url': instance.image_url,
      'is_claimed': instance.is_claimed,
      'is_closed': instance.is_closed,
      'url': instance.url,
      'phone': instance.phone,
      'display_phone': instance.display_phone,
      'review_count': instance.review_count,
      'categories': instance.categories,
      'rating': instance.rating,
      'location': instance.location,
      'coordinates': instance.coordinates,
      'photos': instance.photos,
      'price': instance.price,
      'hours': instance.hours,
      'transactions': instance.transactions,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      alias: json['alias'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'title': instance.title,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      city: json['city'] as String?,
      zipCode: json['zipCode'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      display_address: (json['display_address'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cross_streets: json['cross_streets'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'city': instance.city,
      'zipCode': instance.zipCode,
      'country': instance.country,
      'state': instance.state,
      'display_address': instance.display_address,
      'cross_streets': instance.cross_streets,
    };

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Hours _$HoursFromJson(Map<String, dynamic> json) => Hours(
      open: (json['open'] as List<dynamic>?)
          ?.map((e) => Open.fromJson(e as Map<String, dynamic>))
          .toList(),
      hours_type: json['hours_type'] as String?,
      is_open_now: json['is_open_now'] as bool?,
    );

Map<String, dynamic> _$HoursToJson(Hours instance) => <String, dynamic>{
      'open': instance.open,
      'hours_type': instance.hours_type,
      'is_open_now': instance.is_open_now,
    };

Open _$OpenFromJson(Map<String, dynamic> json) => Open(
      is_overnight: json['is_overnight'] as bool?,
      start: json['start'] as String?,
      end: json['end'] as String?,
      day: json['day'] as int?,
    );

Map<String, dynamic> _$OpenToJson(Open instance) => <String, dynamic>{
      'is_overnight': instance.is_overnight,
      'start': instance.start,
      'end': instance.end,
      'day': instance.day,
    };
