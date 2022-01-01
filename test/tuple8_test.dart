import 'package:tuple8/tuple8.dart';
import 'package:test/test.dart';

void main() {
  group('Tuple<int, double> tests', () {
    final tuple = Tuple(1, 1.0);

    test('Evaluate integer value', () {
      expect(tuple.get<int>(), 1);
    });

    test('Evaluate double value', () {
      expect(tuple.get<double>(), 1.0);
    });
  });
}
