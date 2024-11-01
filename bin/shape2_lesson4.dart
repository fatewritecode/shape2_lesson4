
import 'package:shape2_lesson4/circle.dart';
import 'package:shape2_lesson4/features.dart';
import 'package:shape2_lesson4/rectangle.dart';
import 'package:shape2_lesson4/student.dart';

void main(List<String> arguments) {
  
  // Задание №1 урок 4
  Circle circle=Circle(15);
  circle.setColor(8);
  print('Если радиус круга = 15');
  print('Площадь круга =${circle.area()}');
  print('Цвет фигуры = ${circle.getcolor()}');
  
  Rectangle rectangle=Rectangle(10, 20);
  rectangle.setColor(15);
  print('Если ширина прямоугольника = 10 а высота = 20');
  print('Площадь прямоугольника =${rectangle.area()}');
  print ('Цвет фигуры = ${rectangle.getcolor()}');
 //  Задание №2.1
List<int> numbers;
numbers=fillingTheArray(20);
listPrint(numbers);
numbers=filterEvenNumbers(numbers);
listPrint(numbers);
// Задание №2.2/2.3
List<Student> students=[];
Student c1=Student("Nadine", 18, 9);
Student c2=Student("Mariq", 25, 12);
Student c3=Student("Ivan", 48, 5);
Student c4=Student("Ali", 21, 7);

students.add(c1);
students.add(c2);
students.add(c3);
students.add(c4);
 students=sortStudentsByGPA(students);
print("");
students.forEach((element) {print("${element.name}");});
// Задание 3.1/3.2
loadData();
// Задание 3.3
Stream<int> numberStream() async* {
    for (int i = 1; i < 11; i++) {
      await Future.delayed(Duration(seconds: 1)); // Задержка в 1 секунду
      yield i; // Генерируем следующее число
    }
  }
  // Подписка на поток
  numberStream().listen((number) {
    print('Получено число: $number');
  }, onDone: () {
    print('Поток завершён!');
  });

}
