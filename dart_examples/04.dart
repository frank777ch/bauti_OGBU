void main(){

  final numbers = [1, 2, 3, 4, 4, 5, 5];

  print('Numbers: $numbers ');
  print('Length: ${numbers.length} ');
  print('index 0: ${numbers[0]} ');
  print('index 3: ${numbers[3]} ');
  print('First: ${numbers.first} ');
  print('Last: ${numbers.last} ');
  print('Reversed: ${numbers.reversed} ');

  print('Tipo de datos: ${numbers.runtimeType} ');

  final reversedNumbers = numbers.reversed;  

  print('Tipo de datos: ${reversedNumbers.runtimeType} ');
}