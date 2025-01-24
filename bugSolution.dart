```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0;

  void setValue(int newValue) {
    _value = newValue;
  }

  // Add an equals method for proper comparison
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyClass &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;
}

void main() {
  var obj = MyClass(null);
  print(obj.value); // Output: 0
  obj.setValue(10);
  print(obj.value); // Output: 10
  var obj2 = MyClass(null);
  print(obj2.value == obj.value); // Output: true
  print(obj2 == obj); // Output: false, as expected now
}
```