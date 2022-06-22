program sixty3;
var diskfile:text;filename:string;
  prices:array[1..4] of string[10];i:integer;
begin
write('read file:');
readln(filename);
assign(diskfile, filename);
reset(diskfile);
while not eof(diskfile) do
begin
    for i:=1 to 4 do begin
        readln(diskfile, prices[i]);
        if not(pos('Orange', prices[i])=0) then begin
           prices[i] := copy(prices[i],1,pos(',', prices[i]))+'2.8';
           end;
    end;
end;
close(diskfile);
rewrite(diskfile);
for i:=1 to 4 do writeln(diskfile, prices[i]);
close(diskfile);
end.
