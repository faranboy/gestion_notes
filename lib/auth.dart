class Auth {
  final _storage = FlutterSecureStorage();

  Future<void> login(String username, String password) async {
    await _storage.write(key: 'username', value: username);
    await _storage.write(key: 'password', value: password);
  }

  Future<void> logout() async {
    await _storage.delete(key: 'username');
    await _storage.delete(key: 'password');
  }

  String? getUsername() => _storage.read(key: 'username');
  String? getPassword() => _storage.read(key: 'password');
}