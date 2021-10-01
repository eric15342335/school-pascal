// eric15342335
program q5a;
var
  number : integer;
  str_number : string[2];
begin
  write('Enter a two-digit number: ');
  readln(number);
  str(number, str_number);
  writeln('The tenth digit is ', str_number[1], '.');
  writeln('The unit digit is ', str_number[2], '.');
  readln();
end.
