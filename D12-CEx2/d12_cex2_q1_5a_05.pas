program sixty;
var diskfile: text;input:string;lines:integer; 
begin
readln(input);
assign(diskfile, input);
reset(diskfile);
lines:=1;
while not eof(diskfile) and not (lines>60) do
begin
    readln(diskfile, input);
    writeln(input);
    lines+=1;
end;
readln();
close(diskfile);
end.
