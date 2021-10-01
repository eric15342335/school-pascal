// eric cheng
program TableSeats;
uses
  math;
var
  customer : integer;
begin
  write('Enter the number of customers: ');
  readln(customer);
  
  writeln('Large tables required: ', customer div 6);
  writeln('Small tables required: ', Ceil(customer mod 6 / 2));
end.
