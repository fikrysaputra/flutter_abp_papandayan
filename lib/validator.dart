class Validator {
  static String? validateField({required String value}) {
    if (value.isEmpty) {
      return 'Tidak boleh kosong';
    }

    return null;
  }

  static String? validateUserID({required String uid}) {
    if (uid.isEmpty) {
      return 'User ID tidak boleh kosong';
    } else if (uid.length <= 3) {
      return 'User ID harus lebih dari 3 karakter';
    }

    return null;
  }
}