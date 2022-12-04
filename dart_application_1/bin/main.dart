void main() {
  Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  Idol bts = Idol('BTS', ['RM', '진', '슈가', '정국', '제이홉', '슈가']);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

//Idol class
//constructor 생성자
class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}입니다.');
  }
}
