class MyClass {
  String name;
  String surname;
  MyClass(this.name, this.surname);

  factory MyClass.fromMap(Map<String, String> map) {
    return MyClass(map["name"]!, map["surname"]!);
  }
}

MyClass object = MyClass.fromMap({"name": "Angel", "surname": "Reese"});

class MyChildClass extends MyClass {
  String age;
  MyChildClass(super.name, super.surname, this.age);
}
