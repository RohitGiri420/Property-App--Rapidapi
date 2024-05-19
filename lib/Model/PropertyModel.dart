class PropertyModel {
  List<Results>? results;
  int? resultsPerPage;
  int? totalPages;
  int? totalResultCount;

  PropertyModel(
      {this.results,
        this.resultsPerPage,
        this.totalPages,
        this.totalResultCount});

  PropertyModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    resultsPerPage = json['resultsPerPage'];
    totalPages = json['totalPages'];
    totalResultCount = json['totalResultCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['resultsPerPage'] = this.resultsPerPage;
    data['totalPages'] = this.totalPages;
    data['totalResultCount'] = this.totalResultCount;
    return data;
  }
}

class Results {
  int? bathrooms;
  int? bedrooms;
  String? city;
  String? country;
  String? currency;
  int? daysOnZillow;
  String? homeStatus;
  String? homeStatusForHDP;
  String? homeType;
  String? imgSrc;
  bool? isFeatured;
  bool? isNonOwnerOccupied;
  bool? isPreforeclosureAuction;
  bool? isPremierBuilder;
  bool? isShowcaseListing;
  bool? isUnmappable;
  bool? isZillowOwned;
  double? latitude;
  ListingSubType? listingSubType;
  int? livingArea;
  double? longitude;
  String? lotAreaUnit;
  double? lotAreaValue;
  int? price;
  int? priceForHDP;
  int? rentZestimate;
  bool? shouldHighlight;
  String? state;
  String? streetAddress;
  int? taxAssessedValue;
  int? timeOnZillow;
  int? zestimate;
  String? zipcode;
  int? zpid;
  String? unit;
  int? datePriceChanged;
  int? priceChange;
  String? priceReduction;
  String? openHouse;
  OpenHouseInfo? openHouseInfo;

  Results(
      {this.bathrooms,
        this.bedrooms,
        this.city,
        this.country,
        this.currency,
        this.daysOnZillow,
        this.homeStatus,
        this.homeStatusForHDP,
        this.homeType,
        this.imgSrc,
        this.isFeatured,
        this.isNonOwnerOccupied,
        this.isPreforeclosureAuction,
        this.isPremierBuilder,
        this.isShowcaseListing,
        this.isUnmappable,
        this.isZillowOwned,
        this.latitude,
        this.listingSubType,
        this.livingArea,
        this.longitude,
        this.lotAreaUnit,
        this.lotAreaValue,
        this.price,
        this.priceForHDP,
        this.rentZestimate,
        this.shouldHighlight,
        this.state,
        this.streetAddress,
        this.taxAssessedValue,
        this.timeOnZillow,
        this.zestimate,
        this.zipcode,
        this.zpid,
        this.unit,
        this.datePriceChanged,
        this.priceChange,
        this.priceReduction,
        this.openHouse,
        this.openHouseInfo});

  Results.fromJson(Map<String, dynamic> json) {
    bathrooms = json['bathrooms'];
    bedrooms = json['bedrooms'];
    city = json['city'];
    country = json['country'];
    currency = json['currency'];
    daysOnZillow = json['daysOnZillow'];
    homeStatus = json['homeStatus'];
    homeStatusForHDP = json['homeStatusForHDP'];
    homeType = json['homeType'];
    imgSrc = json['imgSrc'];
    isFeatured = json['isFeatured'];
    isNonOwnerOccupied = json['isNonOwnerOccupied'];
    isPreforeclosureAuction = json['isPreforeclosureAuction'];
    isPremierBuilder = json['isPremierBuilder'];
    isShowcaseListing = json['isShowcaseListing'];
    isUnmappable = json['isUnmappable'];
    isZillowOwned = json['isZillowOwned'];
    latitude = json['latitude'];
    listingSubType = json['listing_sub_type'] != null
        ? new ListingSubType.fromJson(json['listing_sub_type'])
        : null;
    livingArea = json['livingArea'];
    longitude = json['longitude'];
    lotAreaUnit = json['lotAreaUnit'];
    lotAreaValue = json['lotAreaValue'];
    price = json['price'];
    priceForHDP = json['priceForHDP'];
    rentZestimate = json['rentZestimate'];
    shouldHighlight = json['shouldHighlight'];
    state = json['state'];
    streetAddress = json['streetAddress'];
    taxAssessedValue = json['taxAssessedValue'];
    timeOnZillow = json['timeOnZillow'];
    zestimate = json['zestimate'];
    zipcode = json['zipcode'];
    zpid = json['zpid'];
    unit = json['unit'];
    datePriceChanged = json['datePriceChanged'];
    priceChange = json['priceChange'];
    priceReduction = json['priceReduction'];
    openHouse = json['openHouse'];
    openHouseInfo = json['open_house_info'] != null
        ? new OpenHouseInfo.fromJson(json['open_house_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bathrooms'] = this.bathrooms;
    data['bedrooms'] = this.bedrooms;
    data['city'] = this.city;
    data['country'] = this.country;
    data['currency'] = this.currency;
    data['daysOnZillow'] = this.daysOnZillow;
    data['homeStatus'] = this.homeStatus;
    data['homeStatusForHDP'] = this.homeStatusForHDP;
    data['homeType'] = this.homeType;
    data['imgSrc'] = this.imgSrc;
    data['isFeatured'] = this.isFeatured;
    data['isNonOwnerOccupied'] = this.isNonOwnerOccupied;
    data['isPreforeclosureAuction'] = this.isPreforeclosureAuction;
    data['isPremierBuilder'] = this.isPremierBuilder;
    data['isShowcaseListing'] = this.isShowcaseListing;
    data['isUnmappable'] = this.isUnmappable;
    data['isZillowOwned'] = this.isZillowOwned;
    data['latitude'] = this.latitude;
    if (this.listingSubType != null) {
      data['listing_sub_type'] = this.listingSubType!.toJson();
    }
    data['livingArea'] = this.livingArea;
    data['longitude'] = this.longitude;
    data['lotAreaUnit'] = this.lotAreaUnit;
    data['lotAreaValue'] = this.lotAreaValue;
    data['price'] = this.price;
    data['priceForHDP'] = this.priceForHDP;
    data['rentZestimate'] = this.rentZestimate;
    data['shouldHighlight'] = this.shouldHighlight;
    data['state'] = this.state;
    data['streetAddress'] = this.streetAddress;
    data['taxAssessedValue'] = this.taxAssessedValue;
    data['timeOnZillow'] = this.timeOnZillow;
    data['zestimate'] = this.zestimate;
    data['zipcode'] = this.zipcode;
    data['zpid'] = this.zpid;
    data['unit'] = this.unit;
    data['datePriceChanged'] = this.datePriceChanged;
    data['priceChange'] = this.priceChange;
    data['priceReduction'] = this.priceReduction;
    data['openHouse'] = this.openHouse;
    if (this.openHouseInfo != null) {
      data['open_house_info'] = this.openHouseInfo!.toJson();
    }
    return data;
  }
}

class ListingSubType {
  bool? isFSBA;
  bool? isOpenHouse;

  ListingSubType({this.isFSBA, this.isOpenHouse});

  ListingSubType.fromJson(Map<String, dynamic> json) {
    isFSBA = json['is_FSBA'];
    isOpenHouse = json['is_openHouse'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_FSBA'] = this.isFSBA;
    data['is_openHouse'] = this.isOpenHouse;
    return data;
  }
}

class OpenHouseInfo {
  List<OpenHouseShowing>? openHouseShowing;

  OpenHouseInfo({this.openHouseShowing});

  OpenHouseInfo.fromJson(Map<String, dynamic> json) {
    if (json['open_house_showing'] != null) {
      openHouseShowing = <OpenHouseShowing>[];
      json['open_house_showing'].forEach((v) {
        openHouseShowing!.add(new OpenHouseShowing.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.openHouseShowing != null) {
      data['open_house_showing'] =
          this.openHouseShowing!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OpenHouseShowing {
  int? openHouseEnd;
  int? openHouseStart;

  OpenHouseShowing({this.openHouseEnd, this.openHouseStart});

  OpenHouseShowing.fromJson(Map<String, dynamic> json) {
    openHouseEnd = json['open_house_end'];
    openHouseStart = json['open_house_start'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['open_house_end'] = this.openHouseEnd;
    data['open_house_start'] = this.openHouseStart;
    return data;
  }
}
