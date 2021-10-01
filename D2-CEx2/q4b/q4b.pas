// eric15342335
program q4b;
{ unresolved: Input 182cm will output
  5 feet
  11 inches }
const
  inch = 2.54;
  foot = inch*12;
var
  input : integer;
  // input mod foot but floating number
  remainder : real;
begin
  write('Enter your height (in cm) : ');
  readln(input);
  write('You are ', trunc(input/foot) , ' feet ');
  remainder := input - trunc(input/foot)*foot;
  writeln(trunc(remainder/inch), ' inch(es) tall.');
  readln();
end.

