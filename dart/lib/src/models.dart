/// Response models for the IFSC Lookup API.

/// API Response wrapper.
class IfsclookupResponse {
  final String status;
  final dynamic error;
  final IfsclookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  IfsclookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory IfsclookupResponse.fromJson(Map<String, dynamic> json) => IfsclookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IfsclookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the IFSC Lookup API.

class IfsclookupData {
  String? bank;
  String? ifsc;
  String? branch;
  String? address;
  String? contact;
  String? city;
  String? district;
  String? state;
  bool? imps;
  bool? rtgs;
  bool? neft;
  bool? upi;
  String? micr;
  String? swift;
  String? centre;
  String? iso3166;
  String? bankcode;
  String? branchcode;

  IfsclookupData({
    this.bank,
    this.ifsc,
    this.branch,
    this.address,
    this.contact,
    this.city,
    this.district,
    this.state,
    this.imps,
    this.rtgs,
    this.neft,
    this.upi,
    this.micr,
    this.swift,
    this.centre,
    this.iso3166,
    this.bankcode,
    this.branchcode,
  });

  factory IfsclookupData.fromJson(Map<String, dynamic> json) => IfsclookupData(
      bank: json['bank'],
      ifsc: json['ifsc'],
      branch: json['branch'],
      address: json['address'],
      contact: json['contact'],
      city: json['city'],
      district: json['district'],
      state: json['state'],
      imps: json['imps'],
      rtgs: json['rtgs'],
      neft: json['neft'],
      upi: json['upi'],
      micr: json['micr'],
      swift: json['swift'],
      centre: json['centre'],
      iso3166: json['iso3166'],
      bankcode: json['bankcode'],
      branchcode: json['branchcode'],
    );
}

class IfsclookupRequest {
  String ifsc;

  IfsclookupRequest({
    required this.ifsc,
  });

  Map<String, dynamic> toJson() => {
      'ifsc': ifsc,
    };
}
