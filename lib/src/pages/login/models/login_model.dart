class LoginModel {
  const LoginModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;

  factory LoginModel.fromJson(Map<String, dynamic> data) {
    final accessToken = data['access_token'];
    final tokenType = data['token_type'];
    final expiresIn = data['expires_in'];
    if (accessToken is String && tokenType is String && expiresIn is int) {
      return LoginModel(
          accessToken: accessToken, tokenType: tokenType, expiresIn: expiresIn);
    } else {
      throw FormatException('Invalid JSON: $data');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'email': accessToken,
      'token_type': tokenType,
    };
  }
}
