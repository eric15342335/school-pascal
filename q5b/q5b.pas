// eric15342335
program q5b;
var
  number : integer;
  str_number : string[3];
begin
  write('Enter a three-digit number: ');
  readln(number);
  str(number, str_number);
  writeln('The hundredth digit is ', str_number[1], '.');
  writeln('The tenth digit is ', str_number[2], '.');
  writeln('The unit digit is ', str_number[3], '.');
  readln();
end.
