void main() {
  final student1 = Student("EB 1", 23);
  final student2 = Student2("EB 2", 24);

  student1.saySomething();
  student2.saySomething();
}

abstract class IStudent {
  final String name;
  final int age;
  int? schoolId;

  IStudent(this.name, this.age);

  void saySomething() {
    print("Hello 1");
  }
}

class Student implements IStudent {
  final String name;
  final int age;

  Student(this.name, this.age);

  @override
  void saySomething() {
    print("Hello 2");
  }

  @override
  int? schoolId;
}

class Student2 implements IStudent {
  final String name;
  final int age;

  Student2(this.name, this.age);

  @override
  void saySomething() {
    print("Hello 3");
  }

  @override
  int? schoolId;
}