class Person {
  String? name;
  String? _surname;

  // ignore: unnecessary_getters_setters
  String? get surname => _surname;

  set surname(String? value) {
    _surname = value;
  }

  Person();
  Person.builder(this.name, this._surname);

  factory Person.fromJson(Map<String, String> person) =>
      Person.builder(person["name"], person["surname"]);

  Map<String, String?> toJson(Person person) {
    return {"name": person.name, "surname": person.surname};
  }

  Person cascade() {
    Person person = Person();

    person
      ..name = "Batman"
      ..surname = "Superhero";
    return person;
  }

  String getMoney() {
    return r'$39.99';
  }
}
