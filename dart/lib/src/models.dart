/// Response models for the IFSC Lookup API.

/// API Response wrapper.
class IfsclookupResponse {
  final String status;
  final dynamic error;
  final IfsclookupData? data;

  IfsclookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory IfsclookupResponse.fromJson(Map<String, dynamic> json) => IfsclookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IfsclookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
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
