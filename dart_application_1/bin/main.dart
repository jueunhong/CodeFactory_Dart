void main() {
  final List<Map<String, String>> people = [
    {'name': '지수', 'group': '블랙핑크'},
    {'name': '로제', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'},
  ];

  final parsedPeople = people
      .map(
        (e) => Person(name: e['name']!, group: e['group']!),
      )
      .toList();
  print(parsedPeople);

  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  final bts = parsedPeople.where((element) => element.group == 'BTS');
  print(bts);

  final blackPinkCount = people
      .map(
        (e) => Person(name: e['name']!, group: e['group']!),
      )
      .where((element) => element.group == '블랙핑크')
      .fold<int>(
          0, (previousValue, element) => previousValue + element.name.length);

  print(blackPinkCount);
}

class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }
}
