// Simple extension to make hardcoded strings more readable
extension StringHardcoded on String {
  String get hardcoded => this;
}

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
