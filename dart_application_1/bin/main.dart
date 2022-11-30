void main() {
  Operation operation = add;

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
