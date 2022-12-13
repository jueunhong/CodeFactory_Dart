void main() {
  List<int> numbers = [1, 3, 5, 7, 9];
  final sum = numbers.fold<int>(
      0, (previousValue, element) => (previousValue + element));
  print(sum);

  List<String> words = ['안녕하세요 ', '저는 ', '코드팩토리입니다.'];

  final sentence = words.fold<String>(
      '', (previousValue, element) => previousValue + element);
  print(sentence);

  final count = words.fold<int>(
      0, (previousValue, element) => previousValue + element.length);
  print(count);
}
