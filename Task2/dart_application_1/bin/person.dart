class Person {
  String? Name;
  int? Age;
  int? Phone;
  double? Salary;
  String? Section;
  bool? IsAttend;

  
  Person.All(String? name, int? age, int? phone, double? salary,
      String? section, bool? attend) {
    Name = name;
    Age = age;
    Phone = phone;
    Salary = salary;
    Section = section;
    IsAttend = attend;
  }
}
