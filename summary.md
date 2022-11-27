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
