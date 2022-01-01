import 'package:tuple8/tuple8.dart';
import 'package:test/test.dart';

void main() {
  final tuple = Tuple(1, 1.0);
  group('[Tuple<int, double>]', () {
    test('Evaluate integer value', () => expect(tuple.get<int>(), 1));

    test('Evaluate double value', () => expect(tuple.get<double>(), 1.0));

    test('Evaluate String value', () => expect(tuple.get<String>(), null));

    test('Verify toString method', () => expect(tuple.toString(), '(1, 1.0)'));
  });

  group('[Tuple to List]', () {
    test('Verify toList method', () => expect(tuple.toList(), [1, 1.0]));

    test('Verify not growable list', () {
      final list = tuple.toList();
      expect(() => list.add(2), throwsUnsupportedError);
    });

    test('Verify growable list', () {
      final list = tuple.toList(growable: true);
      expect(() => list.add(2), returnsNormally);
    });
  });

  group('[Tuple<int, int>]', () {
    test('Declaring same type tuple', () {
      expect(() => Tuple(1, 1), throwsA(isA<AssertionError>()));
    });
  });
}
