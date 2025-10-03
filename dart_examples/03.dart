void main(){

  final pokemon = {
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'moves': <String> ['Thunder Shock', 'Quick Attack', 'Iron Tail', 'Electro Ball']
  };

  final Map<String, dynamic> pokemon2 = {
    'name': 'Charmander',
    'hp': 80,
    'isAlive': true,
    'abilities' : ['Blaze', 'Solar Power'],
    'moves': ['Ember', 'Scratch', 'Flamethrower', 'Fire Spin'],
    'sprites': {
      'front': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
      'back': 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png',
    }
  };

  print(pokemon);

  print('Name: ${pokemon['name']}');
  print('HP: ${pokemon['hp']}');

  print('Back: ${pokemon2['sprites']['back']}');
  print('Back: ${pokemon2['sprites']['front']}');
}