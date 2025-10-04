void main(){

  final numbers = [1, 2, 3, 4, 4, 5, 5];

  print('Numbers: $numbers ');
  print('Length: ${numbers.length} ');
  print('index 0: ${numbers[0]} ');
  print('index 3: ${numbers[3]} ');
  print('First: ${numbers.first} ');
  print('Last: ${numbers.last} ');

  print('Tipo de datos: ${numbers.runtimeType} ');

  print('----------------------------------');

  final reversedNumbers = numbers.reversed;  

  print('Reversed numbers: $reversedNumbers ');

  print('Reversed numbers: ${reversedNumbers.runtimeType} ');

  print('----------------------------------');

  print(reversedNumbers.toList());
    print(reversedNumbers.toList().runtimeType);

    print('----------------------------------');

  print(reversedNumbers.toSet());
    print(reversedNumbers.toSet().runtimeType);

  print('----------------------------------');

  print(reversedNumbers.toString());
    print(reversedNumbers.toString().runtimeType);

  print('----------------------------------');

  print(reversedNumbers.toSet().toList());
    print(reversedNumbers.toSet().toList().runtimeType);

}