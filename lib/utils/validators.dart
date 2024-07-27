bool isValidEmail(String email) {
  final regex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
  return regex.hasMatch(email);
}

bool isValidPassword(String password) {
  return password.length >= 6;
}
