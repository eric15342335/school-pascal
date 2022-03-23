program num_of_vowels;
var
diskfile:text;
a,e,i,o,u,counter:integer;
data:string[30];
begin
    assign(diskfile,'VOWELS.TXT');
    reset(diskfile);
    a:=0;e:=0;i:=0;o:=0;u:=0;
    while not EOF(diskfile) do
    begin
        while not Eoln(diskfile) do
        begin
            read(diskfile, data);
            for counter:=1 to length(data) do
            begin
                case copy(data,counter,1) of
                'A','a': a+=1;
                'E','e': e+=1;
                'I','i': i+=1;
                'O','o': o+=1;
                'U','u': u+=1;
                end;
            end;
        end;
        readln(diskfile);
    end;
    close(diskfile);
    writeln('no. of a is ', a);
    writeln('no. of e is ', e);
    writeln('no. of i is ', i);
    writeln('no. of o is ', o);
    writeln('no. of u is ', u);
    readln();
end.
