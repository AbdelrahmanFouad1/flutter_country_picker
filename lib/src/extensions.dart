extension StringExtensions on String {
  String get imagePath => 'lib/src/res/assets/$this';

  /// Replace any Hamza in arabic language `String`.
  ///
  /// ### Example
  ///
  /// ```dart
  /// String foo = 'ألمنيا';
  /// String striped = foo.normalizeArabic; // returns 'المنيا'
  /// ```
  ///
  String get replaceArabicCharacters {
    var text = this ?? '';
    // Replace variations of Arabic characters with a single form
    text = text.replaceAll(RegExp('[أإآ]'), 'ا');
    text = text.replaceAll(RegExp('[ؤ]'), 'و');
    text = text.replaceAll(RegExp('[ئ]'), 'ي');

    // Add more replacements as needed
    return text;
  }
}
