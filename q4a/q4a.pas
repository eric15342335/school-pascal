// eric cheng 5a 05
program q4a;
var
  feet, inches : integer;
begin
  write('Enter your height (feet inches) : ');
  readln(feet, inches);
  writeln('You are ', feet*12*2.54+inches*2.54 :5:2, 'cm tall.');
  readln();
end.
