void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> moves = ['Thunder Shock', 'Quick Attack', 'Iron Tail', 'Electro Ball'];

  dynamic errorMessage = 'Hola';
  errorMessage = 404;
  errorMessage = true;
  errorMessage = [1, 2, 3];
  errorMessage = {'name': 'Frank', 'age': 30};
  errorMessage = null;

  print("""

  Hello, $pokemon!
  HP: $hp
  Alive: $isAlive
  Moves: ${moves.join(', ')}
  Moves: ${moves}

  """);

}