/*
Saving Accounts
a. Create class SavingsAccount. Use a static variable annualInterestRate to store the
annual interest rate for all account holders.
b. Each object of the class contains a private instance variable savingsBalance
indicating the amount the saver currently has ondeposit.
c. Provide method calculateMonthlyInterest to calculate the monthly interest by
multiplying the savingsBalance by annualInterestRate divided by 12 this interest
should be added to savingsBalance.
d. Provide a static method modifyInterestRate that sets the annualInterestRate to a
new value. Write a program to test class SavingsAccount. Instantiate two
savingsAccount objects, saver1 and saver2, with balances of $2000.00 and
$3000.00, respectively.
e. Set annualInterestRate to 4%, then calculate the monthly interest and print the
new balances for both savers.
f. Then set the annualInterestRate to 5%, calculate the next month’s interest and
print the new balances for both savers.
*/

class SavingsAccount {
  static double annualInterestRate = 0.0;
  double _savingsBalance = 0.0;

  double calculateMonthlyInterest() {
    _savingsBalance += _savingsBalance * annualInterestRate / 12;
    return _savingsBalance;
  }

  static void modifyInterestRate(double newValue) {
    annualInterestRate = newValue;
  }
}
//Test the class

void main() {
  SavingsAccount saver1 = new SavingsAccount();
  SavingsAccount saver2 = new SavingsAccount();
  saver1._savingsBalance = 2000.00;
  saver2._savingsBalance = 3000.00;

  SavingsAccount.modifyInterestRate(0.04);

  print('The New Balance for Saver 1 after (4%) Monthly Interest is  ' +
      saver1.calculateMonthlyInterest().toString());
  print('The New Balance for Saver 2 after (4%) Monthly Interest is  ' +
      saver2.calculateMonthlyInterest().toString());

  SavingsAccount.modifyInterestRate(0.05);

  print('The New Balance for Saver 1 after (5%)  Monthly Interest is  ' +
      saver1.calculateMonthlyInterest().toString());
  print('The New Balance for Saver 2 after (5%) Monthly Interest is  ' +
      saver2.calculateMonthlyInterest().toString());
}
