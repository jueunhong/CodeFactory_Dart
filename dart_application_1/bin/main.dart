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
