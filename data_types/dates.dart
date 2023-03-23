void main() {
  
  var date1 = DateTime(2022);//sempre o primeiro dia e mês do ano.
  print(date1);
  print('\n');

  var date2 = DateTime(2022, 1, 20);//sempre o primeiro dia e mês do ano.
  print(date2);
  print('\n');
  
  final parseDate = DateTime.parse('2022-02-02');
  print(parseDate);

  final date3 = DateTime.now();
  print(date3);

  print('Horas: ${date3.hour}:${date3.minute}');

}