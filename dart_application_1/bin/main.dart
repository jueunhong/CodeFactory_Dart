void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  final result = numbers.reduce((prev, next) => prev + next);
  print(result);

  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '코드팩토리입니다. ',
  ];

  final sentence = words.reduce((value, element) => value + element);
  print(sentence);
}
