void main() {
  final variable1;
  final variable2;
  var variable3;

  variable1 = 3;
  variable2 = 1;
  variable3 = 10;

  var variable4 = "10";

  if (variable1 > variable2) {
    print(variable1);
    print("-------");
    print(variable2);
  }

  if (variable3 == 10) {
    print("-------");
    print(variable3);
  }

  var convertVariable4 = int.tryParse(variable4) ?? 0;//prevent null.

  print(convertVariable4);
}
