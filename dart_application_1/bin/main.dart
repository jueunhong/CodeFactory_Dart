void main() {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '조이',
      'group': '레드벨벳',
    }
  ];

  final blackPink = people.where((map) => map['group'] == '블랙핑크');
  final BTS = people.where((m) => m['group'] == 'BTS');
  print(blackPink);
  print(BTS);
}
