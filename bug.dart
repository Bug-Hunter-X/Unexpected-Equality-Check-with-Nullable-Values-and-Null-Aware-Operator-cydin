```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; // This line might cause unexpected behavior

  void setValue(int newValue) {
    _value = newValue;
  }
}

void main() {
  var obj = MyClass(null);
  print(obj.value); // Output: 0
  obj.setValue(10);
  print(obj.value); // Output: 10
  var obj2 = MyClass(null);
  print(obj2.value == obj.value); //Output: true, which is unexpected 
}
```