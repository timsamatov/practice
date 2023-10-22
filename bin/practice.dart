import 'package:practice/practice.dart' as practice;

void main(List<String> arguments) {
//func();
//unique();
//even();
//sort();
find();
}
void func() {
  List<int> numbers = [456, 576, 789, 543, 654, 756, 321, 123, 23, 54];
  int max = numbers[0];
  int index = 0;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
      index = i;
    }
  }

  print('Наибольший элемент в массиве: $max');
  print('Индекс этого элемента: $index');
}


void unique() {
  List<int> numbers1 = [456, 576, 789, 543, 654, 756, 321, 123, 23, 54];

  uniqueEls(numbers1);
}

void uniqueEls(List<int> numbers) {
  Set<int> uniqueElements = Set<int>();

  for (int number in numbers) {
    if (uniqueElements.contains(number)) {
      return print('Все элементы неуникальны');
    } else {
      uniqueElements.add(number);
    }
  }
  return print('Все элементы уникальны');
}

/*void even() {
  List<int> numbers = [456, 576, 789, 543, 654, 756, 321, 123, 23, 54];
  int evenNumbers = countNumbers(numbers);

  print('Количество четных чисел в массиве: $evenNumbers');
}
int countNumbers(List<int> numbers) {
  int count = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      count++;
    }
  }

  return count;
}*/

void sort() {
  List<int> numbers = [456, 576, 789, 543, 654, 756, 321, 123, 23, 54];
  
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }

  print('Отсортированный массив: $numbers');
}

void find() {
  List<int> numbers = [456, 576, 789, 543, 654, 756, 321, 123, 23, 54];
  int largestEven = findLargest(numbers);

  if (largestEven != -1) {
    print('Наибольшее четное число в массиве: $largestEven');
  } else {
    print('В массиве нет четных чисел.');
  }
}
int findLargest(List<int> numbers) {
  int largestEven = -1;

  for (int number in numbers) {
    if (number % 2 == 0 && number > largestEven) {
      largestEven = number;
    }
  }

  return largestEven;
}


