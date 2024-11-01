import 'dart:io';
import 'dart:math';

import 'package:shape2_lesson4/student.dart';

List<int> filterEvenNumbers(List<int> numbers)
{
  bool m=true;
  do{
  for(int i=0; i<numbers.length;i++)  
  {
    if (numbers[i]%2!=0) {numbers.removeAt(i);m=true;break;}
    m=false;
  }
  } while(m);

  return numbers;
}

List<int> fillingTheArray([int size=1])
{
  List<int> numbers=new List.filled(size,0,growable: true);
  for(int i=0; i<numbers.length;i++)  
  {
    numbers[i]=Random().nextInt(1000);
  }
  
  return numbers;
}

void listPrint(List<int> numbers)
{
  print("");
  print("Список элементов массива");
  numbers.forEach((element) {stdout.write(element);stdout.write(' '); });
}

List<Student > sortStudentsByGPA(List<Student > students)
{
students.sort((a,b)=>b.gpa.compareTo(a.gpa));
return students;
}

Future<void> loadData() async {
    print("Начало загрузки данных !");
    String message = await getMessage();
    print("Получено сообщение: $message");
    print("Завершение функции loadData");
}
 
Future<String> getMessage() {
  // имитация долгой работы с помощью задержки в 10 секунды
  return Future.delayed(Duration(seconds: 11), () => "Данные загружены !!!");
}