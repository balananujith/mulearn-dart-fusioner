import 'dart:io';

/// Function to process a list of numbers with a given operation
void processList(List<int> numbers, int Function(int) operation) {
  for (int number in numbers) {
    int result = operation(number);
    print('Operation result for $number: $result');
  }
}

void main() {
  // Clear the screen for better visual appeal
  print('\x1B[2J\x1B[0;0H');

  // Display a welcome message
  print('🎉 Welcome to Dart Fusioner! 🎉\n');
  print('This program will dynamically manipulate and organize data using various operations on lists.\n');

  // Define lists of numbers
  List<int> numbers1 = [1, 2, 3, 4, 5];
  List<int> numbers2 = [10, 20, 30, 40, 50];

  // Define operations using anonymous functions (lambdas)
  var doubleOperation = (int number) => number * 2;
  var squareOperation = (int number) => number * number;
  var incrementOperation = (int number) => number + 1;

  // List of operations with descriptions
  List<Map<String, dynamic>> operations = [
    {'description': 'Doubling', 'function': doubleOperation},
    {'description': 'Squaring', 'function': squareOperation},
    {'description': 'Incrementing', 'function': incrementOperation},
  ];

  // List of lists to be processed
  List<List<int>> lists = [numbers1, numbers2];

  // Loop through each list and apply each operation
  for (List<int> list in lists) {
    print('\nProcessing list: $list');
    for (var operation in operations) {
      print('\nOperation: ${operation['description']}');
      processList(list, operation['function']);
    }
  }

  // Display a thank you message
  print('\nThank you for using Dart Fusioner! Keep experimenting with different operations and lists! 🚀');
}
