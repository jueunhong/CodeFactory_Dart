void main() {
  Idol blackPink = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  Idol blackPink2 = const Idol('블랙핑크', ['지수', '제니', '리사', '로제']);

  print(blackPink == blackPink2);

  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '정국', '제이홉', '슈가'],
    'BTS'
  ]);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

//Idol class
//constructor 생성자
//immutable 프로그래밍
class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}입니다.');
  }
}
