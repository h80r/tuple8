/// # Tuple data structure
class Tuple<F, S> {
  const Tuple(this._first, this._second)
      : assert(
          F != S,
          'In this Tuple implementation, the types need to be different.',
        );

  final F _first;
  final S _second;

  E? get<E>() {
    if (E == F) return _first as E;
    if (E == S) return _second as E;
    return null;
  }

  Tuple<F, S> copyWith({F? first, S? second}) {
    return Tuple(first ?? _first, second ?? _second);
  }

  List<dynamic> toList({bool growable = false}) {
    return List.from([_first, _second], growable: growable);
  }

  @override
  String toString() => '($_first, $_second)';

  @override
  bool operator ==(Object other) {
    return other is Tuple && _first == other._first && _second == other._second;
  }

  @override
  int get hashCode => Object.hash(_first, _second);
}
