program sixty2;
var diskfile,writefile: text;input:string;test:integer;
begin
write('read file:');
readln(input);
assign(diskfile, input);

write('write file:');
readln(input);
assign(writefile, input);

reset(diskfile);
rewrite(writefile);

while not eof(diskfile) do
begin
    readln(diskfile, input);
    if not (input = '') then begin
        test:=0;
        repeat
            test+=1;
        until not(input[test]=' ');
        writeln(writefile, copy(input, test, length(input)));
        //writeln(copy(input, test, length(input)));
    end;
end;
close(diskfile);
close(writefile);
end.
