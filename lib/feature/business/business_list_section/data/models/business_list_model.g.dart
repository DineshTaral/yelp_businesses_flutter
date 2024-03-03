// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessListModel _$BusinessListModelFromJson(Map<String, dynamic> json) =>
    BusinessListModel(
      businesses: (json['businesses'] as List<dynamic>?)
          ?.map((e) => Businesses.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessListModelToJson(BusinessListModel instance) =>
    <String, dynamic>{
      'businesses': instance.businesses,
      'total': instance.total,
      'region': instance.region,
    };

Businesses _$BusinessesFromJson(Map<String, dynamic> json) => Businesses(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image_url: json['image_url'] as String?,
      is_closed: json['is_closed'] as bool?,
      url: json['url'] as String?,
      review_count: json['review_count'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toDouble(),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      price: json['price'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$BusinessesToJson(Businesses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.image_url,
      'is_closed': instance.is_closed,
      'url': instance.url,
      'review_count': instance.review_count,
      'categories': instance.categories,
      'rating': instance.rating,
      'coordinates': instance.coordinates,
      'transactions': instance.transactions,
      'price': instance.price,
      'location': instance.location,
      'phone': instance.phone,
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

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
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
    };

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      center: json['center'] == null
          ? null
          : Coordinates.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'center': instance.center,
    };
