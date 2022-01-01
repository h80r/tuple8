/// # Tuple data structure
class Tuple<T, S> {
  const Tuple(this._first, this._second)
      : assert(
          T != S,
          'In this Tuple implementation, the types need to be different.',
        );

  final T _first;
  final S _second;

  E? get<E>() {
    if (E == T) return _first as E;
    if (E == S) return _second as E;
    return null;
  }

  Tuple<T, S> copyWith({T? first, S? second}) {
    return Tuple(first ?? _first, second ?? _second);
  }
}
