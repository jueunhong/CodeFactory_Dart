1. 변수 선언
   
   ```dart
   
   void main() {
   
   //variable 선언, 값 수정
   
   var name = 'codefactory';
   
   print(name);
   
   name = 'flutter';
   
   print(name);
   
   // var name = 'codefactory2'; 변수를 재선언하는 건 불가능
   
   }
   ```

2. 변수 타입
   
   - 정수
     
     ```dart
     void main() {
       //정수
       //integer
       int number1 = 30;
     
       print(number1);
     
       int number2 = 15;
     
       print(number2);
     
       int number3 = -20;
     
       print(number3);
     
       print(number1 + number2);
       print(number1 - number2);
       print(number1 / number2);
       print(number1 * number2);
     }
     ```
   
   - 실수
     
     ```dart
     void main() {
       //실수
       //double
       double number1 = 2.5;
       double number2 = 0.5;
     
       print(number1 + number2);
       print(number1 - number2);
       print(number1 / number2);
       print(number1 * number2);
     }
     ```
   
   -     boolean
     
     ```dart
     void main() {
       //Boolean
       bool isTrue = true;
       bool isFalse = false;
       print(isTrue);
       print(isFalse);
       print(!isFalse);
     }
     ```
   
   - string
     
     ```dart
     void main() {
       //글자
       //String 대문자로 시작
       String name = '레드벨벳';
       String name2 = '코드팩토리';
     
       print(name + ' ' + name2); //덧셈 가능
       print('${name} ${name2}');
       print('$name $name2');
     }
     ```
   
   - var 변수의 타입은?
     
     ```dart
     void main() {
       //var 의 타입은?
       //값을 통해 유추한다.
       var name3 = '블랙핑크';
       var number = 20;
     
       print(name3.runtimeType);
     };
     ```
     
     - 코드가 길어졌을때, var 타입으로 다 선언하면 알아 보기 어려움 
   
   - dynamic
     
     ```dart
     void main() {
       //dynamic
       //어떤 타입이든 넣을 수 있음
       dynamic name = '코드팩토리';
     
       print(name);
     
       dynamic number = 1;
     
       print(number);
     
       var name2 = '블랙핑크';
     
       print(name2);
     
       print(name.runtimeType);
       print(name2.runtimeType);
     
       //dynamic 타입 변수는 중간에 값의 타입 변경 가능
       name = 2;
     
       //var 타입 변수는 한번 선언한 값의 타입을 계속 유지, 중간에 타입 변경 불가
       //name2 = 4; -> error
     }
     ```
   
   - null
     
     - 어떤 타입이든 ?를 붙이면 null값을 넣을 수 있음
       
       ```dart
       void main() {
         //nullable - null이 될 수 있다.
         //non-nullable - null이 될 수 없다.
         //null - 아무런 값도 있지 않다.
         String name = '코드팩토리';
       
         //name = null; -> error,null이 될 수 없는 변수
       
         String? name2 = '블랙핑크';
       
         name2 = null;
         print(name2);
       }
       ```
     
     - 반대로 !를 붙이면 절대 null값이 될 수 없는 변수
       
       ```dart
       print(name2!);
       ```
   
   - final, const
     
     ```dart
     void main() {
       //final
       //값 변경 불가능
       final String name = '코드팩토리';
     
       //name = '블랙핑크'; -> error
     
       //const
       //값 변경 불가능
       const String name2 = '블랙핑크';
     
       //name2 = '코드팩토리'; -> error
     }or
     
     }
     ```
     
     - 타입 생략 가능
     
     ```dart
     void main() {
       //final
       final name = '코드팩토리';
       print(name);
     
       //const
       const name2 = '블랙핑크';
       print(name2);
     }
     ```
     
     - const은 build타임 값을 알고 있어야함
     
     - final은 build타임 값을 몰라도 됨
     
     ```dart
     void main() {
       //코드 실행될때 시간 출력
       final DateTime now = DateTime.now();
       print(now);
       // const DateTime now2 = DateTime.now(); -> error, build time때 변수의 값을 모름
     }
     ```

3. operator
- 사칙연산

```dart
void main() {
  double number = 2;
  print(number);
  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);

  print('-------------');
  print(number % 3); //나눈 나머지

  print('-------------');
  //+1 한 값 재저장
  number++;
  print(number);

  //-1 한 값 재저장
  number--;
  print(number);

  //원하는 값 더하기, 빼기, 곱하기, 나누기해서 재저장
  number += 3;
  print(number);

  number -= 2;
  print(number);

  number *= 5;
  print(number);

  number /= 3;
  print(number);
}
```

- null 조건

```dart
void main() {
  double? number = 4.0;

  print(number);

  number = 2.0;

  print(number);

  number = null;

  print(number);

  //null일때 값을 오른쪽 값으로 바꿈
  number ??= 3.0;

  print(number);
}
```

- 비교연산자

```dart
void main() {
  int number1 = 1;
  int number2 = 2;
  print(number1 > number2); // false
  print(number1 < number2); //true
  print(number1 >= number2); // false
  print(number1 <= number2); //true
  print(number1 == number2); //false
  print(number1 != number2); //true
}
```

- type 비교 연산자

```dart
void main() {
  int number1 = 1;

  print(number1 is int); //true
  print(number1 is String); //false
  print(number1 is! int); // false
  print(number1 is! String); //true
}
```

- 논리 연산자

```dart
void main() {
  //&&(and) : 둘다 만족해야 true
  bool result = 12 > 10 && 1 > 0;
  print(result); //true

  bool result2 = 12 > 10 && 0 > 1;
  print(result2); //false

  //||(or): 둘 중 하나만 만족해도 true
  bool result3 = 12 > 10 || 1 > 0;
  print(result3); // true

  bool result4 = 12 > 10 || 0 > 1;
  print(result4); //true

  bool result5 = 10 > 12 || 0 > 1;
  print(result5); //false
}
```

4. List 클래스
   
   ```dart
   void main() {
     //List 클래스
     //generic안에 넣어준 타입의 요소만 리스트에 넣어야 함
     List<String> blackPink = ['제니', '리수', '로제', '리사'];
     List<int> numbers = [1, 2, 3, 4, 5];
     print(blackPink);
     print(numbers);
   
     //index
     //순서
     //0부터 시작
     print(blackPink[0]);
     print(numbers[1]);
   
   }
   ```
- index로 원하는 순서의 요소 가져오기
- .add 요소 추가 .remove 요소 제거
- .indexOf 인덱스 알아내기

```dart
void main() {
  List<String> blackPink = ['제니', '지수', '로제', '리사'];

  print(blackPink);

  blackPink.add('코드팩토리');

  print(blackPink);

  blackPink.remove('코드팩토리');

  print(blackPink);

  print(blackPink.indexOf('로제'));
}ackPink);
}

```

5. Map

```dart
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

```

6. Set

```dart
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
```

7. if문

```dart
void main() {
  //if 문
  int number = 4;

  if (number % 3 == 0) {
    print('나머지가 0입니다.');
  } else if (number % 3 == 1) {
    print('나머지가 1입니다.');
  } else {
    print('나머지가 2입니다.');
  }
}
```

8. switch문

```dart
void main() {
  //switch 문
  int number = 4;

  switch (number % 3) {
    case 0:
      print('나머지가 0입니다.');
      break;
    case 1:
      print('나머지가 1입니다.');
      break;
    default:
      print('나머지가 2입니다.');
      break;
  }
}
```

9. for loop

```dart
void main() {
  //반복문 loop
  //for loop
  int total = 0;

  List<int> nums = [1, 2, 3, 4, 5, 6];

  for (int i = 0; i < nums.length; i++) {
    total += nums[i];
  }
  print(total);

  total = 0;

  for (int num in nums) {
    total += num;
  }
  print(total);
}
```

10. while loop

```dart
void main() {
  //반복문 loop
  //while loop

  int total = 0;
  while (total < 10) {
    total += 1;
  }
  print(total);

  //do while
  total = 0;
  do {
    total += 1;
  } while (total < 10);

  print(total);
}
```

- break(loop전체 종료)

```dart
void main() {
  //반복문 loop
  //while loop
  int total = 0;

  while (total < 10) {
    total += 1;

    if (total == 5) {
      break;
    }
  }
  print(total);

  total = 0;

  for (int i = 0; i < 10; i++) {
    total += 1;
    if (total == 5) {
      break;
    }
  }

  print(total);
}
```

- continue (현재 loop만 종료하고 다른 loop)

```dart
void main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
```

11. enum 상수 열거형
- 한정된 상수 값 집합을 나타냄

- 직관적으로 존재하는 값들을 확인할 수 있음

- 선언한 enum 타입의 상수값들을 인덱스로 관리할 수 있음

- 전체값은 .values

```dart
enum Status {
  approved, //승인
  pending, //대기
  rejected, //거절
}

void main() {
  Status status = Status.pending;

  if (status == Status.approved) {
    print('승인입니다.');
  } else if (status == Status.pending) {
    print('대기입니다.');
  } else {
    print('거절입니다.');
  }
}
```

12. 함수

```dart
void main() {
  addNumbers(1, 2, 30);
  addNumbers(10, 20, 30);
}
//세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
//parameter / argument - 매개변수
//positional parameter - 순서가 중요한 파라미터

addNumbers(int x, int y, int z) {
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('$x, $y, $z 의 합 $sum은 짝수입니다.');
  } else {
    print('$x, $y, $z 의 합 $sum은 홀수입니다.');
  }
}
```

- optional parameter - 없어도 되는 파라미터
  
  - [ ]로 표시
  
  - null값도 들어갈 수 있음 -> 타입 앞에 ?를 붙이면 -> 뒤에 식에서 error -> 해결) 기본값을 설정해줌

```dart
void main() {
  addNumbers(1);
  addNumbers(10);
}
//세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
//parameter / argument - 매개변수
//positional parameter - 순서가 중요한 파라미터
//optional parameter - 없어도 되는 파라미터

addNumbers(int x, [int y = 20, int z = 30]) {
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('$x, $y, $z 의 합 $sum은 짝수입니다.');
  } else {
    print('$x, $y, $z 의 합 $sum은 홀수입니다.');
  }
}
```

- named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)

```dart
void main() {
  addNumbers(y: 2, x: 1, z: 3);
  addNumbers(x: 10, y: 20, z: 30);
}
//세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
//parameter / argument - 매개변수
//positional parameter - 순서가 중요한 파라미터
//optional parameter - 없어도 되는 파라미터
//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)

addNumbers({
  required int x,
  required int y,
  required int z,
}) {
  print('x: $x');
  print('y: $y');
  print('z: $z');
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('합 $sum은 짝수입니다.');
  } else {
    print('합 $sum은 홀수입니다.');
  }
}

```

- named parameter에 required을 붙이지 않으면 optional parametre로 사용가능 -> 기본값 설정

```dart
void main() {
  addNumbers(y: 2, x: 1, z: 3);
  addNumbers(x: 10, y: 20, z: 30);
}
//세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
//parameter / argument - 매개변수
//positional parameter - 순서가 중요한 파라미터
//optional parameter - 없어도 되는 파라미터
//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)

addNumbers({
  required int x,
  required int y,
  int z = 10, // named parameter는 기본값이 optional
}) {
  print('x: $x');
  print('y: $y');
  print('z: $z');
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('합 $sum은 짝수입니다.');
  } else {
    print('합 $sum은 홀수입니다.');
  }
}
```

- void란 뭐냐?
  
  - return이 없는 함수

- return값을 받으려면 -> 함수를 선언할때 함수명 앞에 return할 값의 type을 써줌

```dart
void main() {
  int result = addNumbers(1, y: 2, z: 3);
  int result2 = addNumbers(10, y: 20, z: 30);

  print('result: $result');
  print('result2: $result2');
}
//세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
//parameter / argument - 매개변수
//positional parameter - 순서가 중요한 파라미터
//optional parameter - 없어도 되는 파라미터
//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)

int addNumbers(
  int x, {
  required int y,
  int z = 10, // positional parameter와 named paramter 혼합
}) {
  print('x: $x');
  print('y: $y');
  print('z: $z');
  int sum = x + y + z;
  if (sum % 2 == 0) {
    print('합 $sum은 짝수입니다.');
  } else {
    print('합 $sum은 홀수입니다.');
  }

  return sum;
}
```

- arrow 함수 (리턴)

```dart
void main() {
  int result = addNumbers(1, y: 2, z: 3);
  int result2 = addNumbers(10, y: 20, z: 30);

  print('result: $result');
  print('result2: $result2');
}
//세개의 숫자(x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
//parameter / argument - 매개변수
//positional parameter - 순서가 중요한 파라미터
//optional parameter - 없어도 되는 파라미터
//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)

int addNumbers(
  int x, {
  required int y,
  int z = 10,
}) => x + y + z;
```

13. typedef
    
    - 함수를 시그니처화 해서 여러 함수를 유용하게 다룰 수 있음 
    
    - 시그니처 선언한 타입의 변수에 함수들을 할당해서 다르게 할당만 하면 다른 함수를 쓸 수 있다.
    
    ```dart
    void main() {
      Operation operation = add; //변수 선언 후 함수 할당, type은 typedef에 선언한 Operation
    
      int result = operation(10, 20, 30);
      print(result);
    
      operation = substract;
    
      int result2 = operation(30, 10, 10);
      print(result2);
    
      int result3 = calculate(40, 20, 10, add);
    
      print(result3);
    }
    //시그니처 
    typedef Operation = int Function(int x, int y, int z);
    
    //더하기
    int add(int x, int y, int z) => x + y + z;
    
    //빼기
    int substract(int x, int y, int z) => x - y - z;
    
    //계산
    int calculate(int x, int y, int z, Operation operation) => operation(x, y, z);
    ```

14.객체 지향 프로그래밍

- Class: 정의, Instance: 실제 내용 구현

- constructor생성자를 통해 외부에서 class 의 변수들에 값을 바꿀 수 있음

```dart
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

  Idol(String name, List<String> memebers)
      : this.name = name,
        this.members = memebers;

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}입니다.');
  }
}
```

- 조금 더 간결한 constructor

```dart
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
```

- named constructor

```dart
void main() {

  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '정국', '제이홉', '슈가'],
    'BTS'
  ]);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

//Idol class
//named constructor 생성자
class Idol {
  String name;
  List<String> members;

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}입니다.');
  }
}];
```

- immutable 프로그래밍
  
  - class 변수를 final 변수로 선언 -> class안의 변수가 선언된 이후로 값 변하지 않도록
  
  - const constructor -> instance의 값이 같으면 같은 instance
  
  ```dart
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
  ```

- getter/setter
  
  - get
    
    - 데이터를 가져올때
    
    - 함수와의 차이: 기능적으로는 없음, get은 단순히 데이터 가져올 때, 함수는 조금 더 로직이 들어갈 때 주로 사용
  
  - set
    
    - 값을 새로 지정
    
    - 무조건 1개의 parameter
    
    - final 변수로 지정하면 setter를 쓸 수 없음 -> 현재 많이는 안씀
  
  ```dart
  void main() {
    Idol blackPink = Idol('블랙핑크', ['지수', '제니', '리사', '로제']);
  
    Idol bts = Idol.fromList([
      ['RM', '진', '슈가', '정국', '제이홉', '슈가'],
      'BTS'
    ]);
  
    print(blackPink.firstMember);
    print(bts.firstMember);
  
    blackPink.firstMember = '코드팩토리';
    bts.firstMember = '아이언맨';
  
    print(blackPink.firstMember);
    print(bts.firstMember);
  }
  
  //Idol class
  //getter / setter
  //데이터를 가져올 때 / 데이터를 설정할 때
  class Idol {
    String name;
    List<String> members;
  
    Idol(this.name, this.members);
  
    Idol.fromList(List values)
        : this.members = values[0],
          this.name = values[1];
  
    void sayHello() {
      print('안녕하세요 ${this.name}입니다.');
    }
  
    void introduce() {
      print('저희 멤버는 ${this.members}입니다.');
    }
  
    //getter
    String get firstMember {
      return this.members[0];
    }
  
    //setter
    set firstMember(String name) {
      this.members[0] = name;
    }
  }
  ```

- private 변수 , class, 함수
  
  - _Idol class -> 다른 파일에서 불러와서 사용할 수 없음

- inheritance 상속
  
  - 부모 class의 모든 속성을 자식 class가 부여받는다.
  
  - 자식 class extends 부모 class
  
  - super : 부모 class의 constructor
  
  - 자식 class에서 부모 class로 속성 넘겨줄 수 없음
  
  ```dart
  void main() {
    print('-----Idol----');
    Idol apink = Idol(name: '에이핑크', membersCount: 5);
  
    apink.sayName();
    apink.sayMembersCount();
  
    print('-----BoyGroup----');
  
    BoyGroup bts = BoyGroup('BTS', 7);
    bts.sayName();
    bts.sayMembersCount();
    bts.sayMale();
  
    print('-----GirlGroup----');
    GrilGroup redVelvet = GrilGroup('레드벨벳', 5);
    redVelvet.sayName();
    redVelvet.sayMembersCount();
    redVelvet.sayFemale();
  
    print('-----Type Comparison-----');
    print(apink is Idol); //true
    print(apink is BoyGroup);//false
    print(apink is GrilGroup);//false
  
    print(bts is Idol); //true
    print(bts is BoyGroup); //true
    print(bts is GrilGroup); //false
  }
  
  //상속 - inheritance
  //상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.
  
  class Idol {
    String name;
    int membersCount;
  
    Idol({
      required this.name,
      required this.membersCount,
    });
  
    void sayName() {
      print('저는 ${this.name}입니다.');
    }
  
    void sayMembersCount() {
      print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
    }
  }
  
  class BoyGroup extends Idol {
    BoyGroup(
      String name,
      int membersCount,
    ) : super(
            name: name,
            membersCount: membersCount,
          );
  
    void sayMale() {
      print('저는 남자 아이돌입니다.');
    }
  }
  
  class GrilGroup extends Idol {
    GrilGroup(
      String name,
      int membersCount,
    ) : super(
            name: name,
            membersCount: membersCount,
          );
  
    void sayFemale() {
      print('저는 여자 아이돌입니다.');
    }
  }
  
  
  ```

```

```

- method override

```dart
void main() {
TimesTwo tt = TimesTwo(2);
print(tt.calculate());

TimesFour tf = TimesFour(2);
print(tf.calculate());
}

//method - function (class 내부에 있는 함수)
//override - 덮어쓰다 (우선시하다)

class TimesTwo {
final int number;

TimesTwo(
this.number,
);

//method
int calculate() {
return number * 2;
}
}

class TimesFour extends TimesTwo {
TimesFour(
int number,
) : super(number);

@override
int calculate() {
// return super.calculate() * 2;
return super.number * 4;
}
}

```

- static 타입
  
  - instance에 귀속되지 않고, class에 귀속된다.
  
  - instance를 만들때 값을 주는게 아니라, class로 바로 불러와서 변수 값을 넣어준다.

```dart
void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');
  seulgi.printNameAndBuilding();

  Employee.building = '오투타워';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();
}

class Employee {
  //static 은 instance에 귀속되지 않고 class에 귀속된다.
  //알바생이 일하고 있는 건물
  static String? building;
  //알바생 이름
  final String name;
  Employee(
    this.name,
  );
  void printNameAndBuilding() {
    print('제 이름은 $name 입니다. $building 건물에서 일하고 있습니다.');
  }

  static void printBuilding() {
    print('저는 $building 에서 근무중입니다.');
  }
}

```

- Interface
  
  - class가 꼭 가져야 하는 변수와 메소드를 지정해주는 역할을 한다. 
  
  - class처럼 선언한다. 그러나 instance화하는 것을 막을 수 있다. -> abstract 로 정의하면 됨. 
  
  - abstract로 정의했을 때 instance로 사용하는 것을 막고, 함수 body도 없앨 수 있다.

```dart
void main() {
  BoyGroup bts = BoyGroup('방탄');
  GirlGroup redVelvet = GirlGroup('레드벨벳');
  bts.sayName();
  redVelvet.sayName();
}

//interface
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);
  void sayName() {
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}

```

- generic 
  
  - 외부에서 타입을 변수처럼 받을 때 사용
  
  - class선언 시 <> 안에 type 변수 

```dart
void main() {
  Lecture<String> lecture1 = Lecture('123', 'lecture1');
  lecture1.printIdType();

  Lecture<int> lecture2 = Lecture(123, 'lecture2');
  lecture2.printIdType();
}
//generic 외부에서 타입을 받을 때 사용

class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}

```

- 모든 class는 Object를 상속한다.
15. 함수형 프로그래밍
- 형 변환

```dart
void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니', '제니'];
  print(blackPink);
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet.toList());
}
```

- List mapping
  
  - list 요소 하나씩 return해서 새로운 List 만듦
  
  ```dart
  void main() {
    List<String> blackPink = ['로제', '지수', '리사', '제니'];
  
    final newBlackPink = blackPink.map((x) {
      return '블랙핑크 $x';
    });
  
    print(blackPink);
    print(newBlackPink.toList());
  
    final newBlackPink2 = blackPink.map((x) => '블랙핑크 new $x');
    print(newBlackPink2.toList());
  
    //[1.jpg 3.jpg 5.jpg 7.jpg 9.jpg]
    String number = '13579';
    final parsed = number.split('').map((x) => '$x.jpg').toList();
    print(parsed);
  }oList());
  }
  ```

- map mapping
  
  - key, value값만 mapping도 가능

```dart
void main() {
  Map<String, String> harryPotter = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Herimione Granger': '헤르미온느 그레인저'
  };

  final result = harryPotter.map((key, value) =>
      MapEntry('Harry Potter Character $key', '해리포터 캐릭터 $value'));

  print(harryPotter);

  print(result);

  final keys = harryPotter.keys.map((e) => 'HPC $e').toList();
  print(keys);
}t(result);
}
```

- Set mapping

```dart
void main() {
  Set blackPink = {'로제', '지수', '제니', '리사'};

  final newSet = blackPink.map((e) => '블랙핑크 $e').toSet();
  print(newSet);
}
```

- Where
  
  - true인 요소만 남김

```dart
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
});
}
```

- reduce
  
  - reduce((prev, next) => ())
  
  - prev가 return 한 결과로 계속 업데이트 됨
  
  - List의 구성요소와 같은 type만 return할 수 있음

```dart
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
```

- fold
  
  - reduce와 비슷한 구조이지만, reduce의 한계를 보완
  
  - return할 값의 type과 처음 들어갈 값을 지정할 수 있음

```dart
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
```

- cascading

```dart
void main() {
  List<int> even = [2, 4, 6, 8];

  List<int> odd = [
    1,
    3,
    5,
    7,
  ];
  //cascading operator
  //...
  print([...even, ...odd]);
  print(even == [...even]); //false
}
```

- List 안 map 을 class로 변환 -> 구조화 가능, 변경되지 않도록



16. Async Programming

- Future
  - 미래에 받아올 값
  - async로 programming하도록 해줌

```dart
//Future - 미래
  //미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

//2개의 파라미터
  //1번 파라미터 - 지연할 기간 Duration
  //2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds: 2), () {
    print('Delay 끝');
  });
```

