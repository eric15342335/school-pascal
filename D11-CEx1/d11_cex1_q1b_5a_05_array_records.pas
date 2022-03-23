program d11_cex1_q1b_5a_05_array_records;
const
    num=10;
    //.. of entries
type
    Records=record
        _name:string[30];
        telno:longint;
        minutes:longint;
        plan:char;
        fee:double;
        end;
var
    ClientArray: array[1..num] of Records;
    counter:integer;//for loop
    clientcount:integer;//how many clients have been inputted
procedure InputRecord;
var
    continput:char;//input another client
begin
    counter:=0;
    repeat
        counter+=1;
        with ClientArray[counter] do begin
            write('Enter client name: '); readln(_name);
            write('Enter telephone no.: '); readln(telno);
            write('Enter minutes: '); readln(minutes);
            write('Enter plan <A or B>: '); readln(plan);
            writeln;
            writeln('Input another client <Y/N>?'); readln(continput);
            writeln;
        end;
    until continput='N';
    writeln;
    writeln;
    clientcount:=counter;
end;
procedure ProcessRecord;
begin
    for counter:=1 to clientcount do begin
        with ClientArray[counter] do begin
            case(plan) of
                'A': begin fee:=35;if minutes-800 > 0 then fee+=(minutes-800)*0.5;end;
                'B': begin fee:=55;if minutes-1400 > 0 then fee+=minutes-1400;end;
            end;
        end;
    end;
end;
procedure OutputRecord;
begin
    for counter:=1 to clientcount do begin
        with ClientArray[counter] do begin
            writeln(_name, ' : Tel. no. = ',telno, ', Minute(s) used = ',minutes);
            writeln('The fee is ', fee:0:2);
        end;
    end;
end;
begin
    InputRecord;
    ProcessRecord;
    OutputRecord;
end.
