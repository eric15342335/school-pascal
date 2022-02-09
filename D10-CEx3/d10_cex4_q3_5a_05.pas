
program d10_cex4_q3_5a_05;
 //it works finally, didn't debug
var
input:integer;
anymore:char;
a,b,c:integer;

function strnum(num,place:integer):string;
begin
     if not(place=2)
        then
            begin
                 case num of
                    1:strnum:='One';
                    2:strnum:='Two';
                    3:strnum:='Three';
                    4:strnum:='Four';
                    5:strnum:='Five';
                    6:strnum:='Six';
                    7:strnum:='Seven';
                    8:strnum:='Eight';
                    9:strnum:='Nine';
                     end;

           end
     else
       begin
           if (num<20) and (num>10)
           then
               begin
                case(num) of
                    11:strnum:='Eleven';
                    12:strnum:='Twelve';
                    13:strnum:='Thirteen';
                    14:strnum:='Fourteen';
                    15:strnum:='Fifteen';
                    16:strnum:='Sixteen';
                    17:strnum:='Seventeen';
                    18:strnum:='Eighteen';
                    19:strnum:='Nineteen';
                end
               end

else begin case(num) of
2:strnum:='Twenty';
3:strnum:='Thirty';
4:strnum:='Fourty';
5:strnum:='Fifty';
6:strnum:='Sixty';
7:strnum:='Seventy';
8:strnum:='Eighty';
9:strnum:='Ninety';
end;
end;
       end;



end;

begin

anymore:='Y';
repeat
        repeat
            write('Enter an integer: ');
            readln(input);
            if not(0<input) and not(input<10000) then writeln('Please enter an integer between 1 and 9999')
        until (0<input) and (input<10000);
        write(input,' is ');
        a:=input div 1000;
        b:=input mod 1000 div 100;
        c:=input mod 1000 mod 100;
        if not(a = 0)
            then write(strnum(a, 4), ' Thousand ');
        if not(b = 0)
            then write(strnum(b, 3), ' Hundred ');
        if (c>0) then if (c < 20) and (c > 10)
            then write(strnum(c, 2))
            else begin
             if (c = 10) then write('Ten');
        if (c < 10) then write(strnum(c mod 10,1));
        write(strnum(c div 10, 2),' ', strnum(c mod 10,1));
        end;
        writeln;
        write('Any more (Y/N)? ');
        readln(anymore);
until anymore='N';
end.