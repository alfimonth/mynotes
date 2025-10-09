String formatError(String input) {
  if (input.isEmpty) return '';
  // Replace hyphens with spaces
  String formatted = input.replaceAll('-', ' ');
  // Capitalize first letter
  return formatted[0].toUpperCase() + formatted.substring(1);
}