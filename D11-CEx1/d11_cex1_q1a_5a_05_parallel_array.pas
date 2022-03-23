program d11_cex1_q1a_5a_05_parallel_array;
const
    num=10;
    //.. of entries
var
    cname:array[1..num] of string[30];
    telno:array[1..num] of longint;
    minutes:array[1..num] of longint;
    plan:array[1..num] of char;
    fee:array[1..num] of double;
    counter:integer;//for loop
    clientcount:integer;//how many clients have been inputted
procedure InputRecord;
var
    continput:char;//input another client
begin
    counter:=0;
    repeat
        counter+=1;
        write('Enter client name: '); readln(cname[counter]);
        write('Enter telephone no.: '); readln(telno[counter]);
        write('Enter minutes: '); readln(minutes[counter]);
        write('Enter plan <A or B>: '); readln(plan[counter]);
        writeln;
        writeln('Input another client <Y/N>?'); readln(continput);
        writeln;
    until continput='N';
    writeln;
    writeln;
    clientcount:=counter;
end;
procedure ProcessRecord;
begin
    for counter:=1 to clientcount do begin
        case(plan[counter]) of
            'A': begin fee[counter]:=35;if minutes[counter]-800 > 0 then fee[counter]+=(minutes[counter]-800)*0.5;end;
            'B': begin fee[counter]:=55;if minutes[counter]-1400 > 0 then fee[counter]+=minutes[counter]-1400;end;
        end
    end;
end;
procedure OutputRecord;
begin
    for counter:=1 to clientcount do begin
        writeln(cname[counter], ' : Tel. no. = ',telno[counter], ', Minute(s) used = ',minutes[counter]);
        writeln('The fee is ', fee[counter]:0:2);
    end;
end;
begin
    InputRecord;
    ProcessRecord;
    OutputRecord;
end.
