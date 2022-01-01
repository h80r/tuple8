import 'package:tuple8/tuple.dart';

void main() {
  final tuple = Tuple(1, 1.0);
  print('Tuple int: ${tuple.get<int>()}');
  print('Tuple double: ${tuple.get<double>()}');
}
