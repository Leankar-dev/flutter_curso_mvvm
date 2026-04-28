class LoginRequest {
  final String username;
  final String password;
  final String expireInMins;

  const LoginRequest({
    required this.username,
    required this.password,
    required this.expireInMins,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'expireInMins': expireInMins,
    };
  }

  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return LoginRequest(
      username: json['username'] ?? '',
      password: json['password'] ?? '',
      expireInMins: json['expireInMins'] ?? '',
    );
  }
}
