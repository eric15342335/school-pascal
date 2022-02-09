program d10_cex4_q1_5a_05;

var
triangle: array[1..5,1..5] of integer;
xpos,ypos: integer;

begin
triangle[1,1]:=1;
for xpos:=2 to 5 do
    for ypos:=1 to xpos do
        begin
            if not(ypos = 1) and not(ypos = xpos)
                then triangle[xpos,ypos]:=triangle[xpos-1,ypos-1]+triangle[xpos-1, ypos]
                else triangle[xpos,ypos]:=1;
        end;
for xpos:=1 to 5 do
    begin
        for ypos:=1 to xpos do
            write(triangle[xpos,ypos]);
        writeln;
    end;
end.

