// eric cheng
program BMI;
uses
  math;
var
  weight : integer;
  height : real;
begin
  // user inputs
  write('Enter your height (kg): ');
  readln(weight);
  // height decimal number
  write('Enter your height (m): ');
  readln(height);
  writeln('Your BMI is ', weight / (height**2) :0:2);
end.
