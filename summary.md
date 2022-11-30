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
