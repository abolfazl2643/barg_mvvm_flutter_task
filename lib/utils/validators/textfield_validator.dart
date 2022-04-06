mixin Validator {
  String? validateUsername(String? value) {
    if (value == null || value.isEmpty || value.length < 4) {
      return 'Should be at least 4 characters!';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty || value.length < 4) {
      return 'Should be at least 4 characters!';
    }
    return null;
  }
}
