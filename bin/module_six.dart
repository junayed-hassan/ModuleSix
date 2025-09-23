class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Department: $department");
    print("-----------------------------------");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
    : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Language: $programmingLanguage");
    print("-----------------------------------");
  }
}

void main() {
  Manager manager = Manager("Alice", 70000, "IT Department");
  Developer developer = Developer("Bob", 60000, "Dart & Flutter");

  manager.displayInfo();
  developer.displayInfo();
}
