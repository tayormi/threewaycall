class TwilioCallPhoneRequest {
  final String phoneNumber;

  TwilioCallPhoneRequest({
    this.phoneNumber,
  });

  factory TwilioCallPhoneRequest.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    return TwilioCallPhoneRequest(
      phoneNumber: data['phoneNumber'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
    };
  }
}