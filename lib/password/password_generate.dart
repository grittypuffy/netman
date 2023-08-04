import 'dart:math';

void main(){
  passwordGenerate(20);
}

String passwordGenerate(int length){
  const lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  const upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const numbers = '0123456789';
  const symbols = '!@#\$%^&*()_+-={}[]:;<,>./?\'"~`|"';
  String characters = '$lowerCase$upperCase$numbers$symbols';
  return List.generate(length, (index){
      final random = Random.secure().nextInt(characters.length);
      return characters[random];
  }).join('');
}
