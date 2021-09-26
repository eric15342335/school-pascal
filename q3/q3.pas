// eric15342335
program q3;
var
  first, second : longint;
begin
  write('Enter an integer : ');
  readln(first);
  write('enter another integer : ');
  readln(second);
  writeln(first, ' + ', second, ' = ', first+second);
  writeln(first, ' - ', second, ' = ', first-second);
  writeln(first, ' * ', second, ' = ', first*second);
  writeln(first, ' div ', second, ' = ', first div second);
  writeln(first, ' mod ', second, ' = ', first mod second);
  readln()
end.
