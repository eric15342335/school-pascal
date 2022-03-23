program odd_sum;
var diskfile:text;
    sum,number:integer;
begin
    assign(diskfile, 'VALUES.TXT');
    reset(diskfile);
    sum:=0;
    while not EOF(diskfile) do
    begin
        while not Eoln(diskfile) do
        begin
            read(diskfile, number);
            if odd(number)             // if odd number
               then sum+=number;
            writeln(number);
        end;
        readln(diskfile);
    end;
    close(diskfile);
    writeln('The sum is ', sum);
    readln();
end.
