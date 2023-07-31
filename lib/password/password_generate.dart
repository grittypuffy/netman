import 'dart:math';

void main(){
  passwordGenerate();
}

String passwordGenerate(int length){
  final _length = length;
  final lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  final upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final numbers = '0123456789';
  final symbols = '!@#\$%^&*()_+-={}[]:;<,>./?\'"~`|\"';
  String characters = '$lowerCase$upperCase$numbers$symbols';
  return List.generate(_length, (index){
      final random = Random.secure().nextInt(characters.length);
      return characters[random];
  }).join('');
}
