//ENUMS

void main() {
  final employee1 = Employee('Nitigya', EmployeeType.swe);
  final employee2 = Employee('Nitigya', EmployeeType.finance);
  final employee3 = Employee('Sonal', EmployeeType.marketing);

  employee1.fn();
  employee2.fn();
  employee3.fn();
}

enum EmployeeType {
  swe,
  finance,
  marketing;
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    switch (type) {
      case EmployeeType.swe:
        print('Software Engineer');
      case EmployeeType.finance:
        print('Finance');
      default:
        print('Marketing');
    }
  }
}
