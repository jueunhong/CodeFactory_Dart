void main() {
  //Set
  //중복값 하나로 처리
  final Set<String> name = {'Code Factory', 'Flutter', 'Black Pink'};

  print(name);

  name.add('Flutter');

  print(name);

  name.remove('Flutter');

  print(name);

  //값이 있는지 확인
  print(name.contains('Code Factory'));

  List<String> blackPink = ['지수'];
  print(blackPink.contains('지수'));
}
