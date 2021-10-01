// eric cheng
program PerfectSquare;

function IsSquare (square : integer) : boolean;
begin
  IsSquare := (frac(sqrt(square)) = 0);
end;

var
  square : integer;
begin
  write('Enter an integer: ');
  readln(square);
  writeln('Is ', square, ' a perfect square? ', IsSquare(square));
end.
