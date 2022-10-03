/*
Employees
a. Create a class called Employee that includes three pieces of information as
instance variables—a first name (typeString), a last name (typeString) and a
monthly salary (double).
b. Your class should have a constructor that initializes the three instance variables.
c. Provide a set and a get method for each instance variable. If the monthly salary is
not positive, set it to 0.0.
*/

class Employees {
  String? firstName;
  String? lastName;
  double? salary;

  Employees() {
    this.firstName = "";
    this.lastName = "";
    this.salary = 0.0;
  }
  Employees.withArgs(firstName, lastName, salary) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.salary = salary;
  }

  getFirstName() => this.firstName;

  setFirstName(firstName) => this.firstName = firstName;

  getLastName() => this.lastName;

  setLastName(lastName) => this.lastName = lastName;

  getSalary() => this.salary;

  setSalary(salary) {
    if (salary < 0)
      this.salary = 0.0;
    else
      this.salary = salary;
  }
}

void main() {
  Employees emp1 = new Employees.withArgs('Ahmed', 'Hammad', 1119.9);
  print("The First employee is " +
      emp1.getFirstName() +
      " " +
      emp1.getLastName() +
      "\n and Salary is :" +
      emp1.getSalary().toString());

  Employees emp2 = new Employees();
  emp2.setFirstName('Second');
  emp2.setLastName('Name');
  emp2.setSalary(-1009.98);
  print("The Second employee is " +
      emp2.getFirstName() +
      " " +
      emp2.getLastName() +
      "\n and Salary is :" +
      emp2.getSalary().toString());
}
