program d5_cex2_q1;
var
  num : integer;
begin
  write('Please enter a number : ');
  readln(num);
  if num > 0
    then write('The square root is ', sqrt(num):0:4)
    else write('The square root is not real');
end.
