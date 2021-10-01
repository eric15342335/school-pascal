// eric cheng
program secretprogram;
var
  character : char;
  offset : integer;
begin
  write('Enter a character: ');
  readln(character);
  write('Enter an integer: ');
  readln(offset);
  writeln(offset, ' characters after ', character, ' is ',
          chr(ord(character)+offset));
end.
