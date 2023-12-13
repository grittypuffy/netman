import 'dart:math';

String passwordGenerate({int length=20}) {
  const lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  const upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const numbers = '0123456789';
  const symbols = '!@#\$%^&*()_+-={}[]:;<,>./?\'"~`|"';
  const characters = '$lowerCase$upperCase$numbers$symbols';
  return List.generate(length, (index) {
    final random = Random.secure().nextInt(characters.length);
    return characters[random];
  }).join('');
}
