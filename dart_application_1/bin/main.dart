void main() {
  //Map
  //Key / Value 짝을 이뤄서 값
  Map<String, String> dictionary = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

  print(dictionary);

  Map<String, bool> isHarryPotter = {
    'Harry Potter': true,
    'Ron Weasley': true,
    'Ironman': false
  };

  print(isHarryPotter);

  //추가
  isHarryPotter.addAll({'Spiderman': false});

  isHarryPotter['Hulk'] = false;

  print(isHarryPotter);

  //value값 가져오기
  print(isHarryPotter['Ironman']);

  //value값 바꾸기

  isHarryPotter['Spiderman'] = true;

  print(isHarryPotter);

  //삭제

  isHarryPotter.remove('Harry Potter');

  print(isHarryPotter);

  //key 값만 , value값만 따로 가져오기
  print(isHarryPotter.keys);
  print(isHarryPotter.values);
}
