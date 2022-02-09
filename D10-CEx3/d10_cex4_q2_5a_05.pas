program d10_cex4_q2_5a_05;
var
Name:array[1..3] of string[20];
TMark:array[1..3,1..4] of integer;
EMark:array[1..3] of integer;
count:integer;

function _remark(mark:integer):string;
begin
    if mark<50
        then _remark:='Failed'
        else if mark<70
            then _remark:='Passed'
            else _remark:='Passed with merit';
end;

begin

for count:=1 to 3 do
    begin
        readln(Name[count]);
        readln(TMark[count,1],TMark[count,2],TMark[count,3],TMark[count,4]);
        EMark[count]:=round((TMark[count,1]+TMark[count,2]+TMark[count,3])/3*0.3+TMark[count,4]*0.7);
    end;
writeln('Name','Total':16,'   Remark');
writeln;
for count:=1 to 3 do
    writeln(Name[count],EMark[count]:15-length(Name[count])+2,'      ',_remark(EMark[count]));
end.
