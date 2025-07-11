class AuthResponseDto {
  final String token;
  final String? userId;

  AuthResponseDto({
    required this.token,
    this.userId,
  });
}
