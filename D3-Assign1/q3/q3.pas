// eric cheng
program randomMCguesses;
var
  n : integer;
begin
  writeln('Random Guess');
  for n := 1 to 3 do (
    writeln('MC answer ', n, ' = ', chr(65+random(5)))
  );
end.
