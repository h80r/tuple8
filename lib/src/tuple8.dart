/// Represents a 2-tuple, or pair.
class Tuple<F, S> {
  const Tuple(this._first, this._second)
      : assert(
          F != S,
          'In this Tuple implementation, the types need to be different.',
        );

  /// Is the first item of the tuple
  final F _first;

  /// Is the second item of the tuple
  final S _second;

  /// Returns the value which type corresponds to [E].
  ///
  /// If this tuple doesn't have a value of type [E], returns `null` instead.
  E? get<E>() {
    if (E == F) return _first as E;
    if (E == S) return _second as E;
    return null;
  }

  /// Creates a new [Tuple] with one or both values replaced from the original
  /// tuple.
  Tuple<F, S> copyWith({F? first, S? second}) {
    return Tuple(first ?? _first, second ?? _second);
  }

  /// Creates a [List] containing the items of this [Tuple].
  ///
  /// The list growability is defined by [growable].
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
