program d13_cex2_q1;
var infile:text;
  term:array[1..50] of string;
  num:integer;
  target:string;
procedure InputData(num:integer);
begin
     assign(infile, 'computer.txt');
     reset(infile);
     while not eof(infile) do begin
           readln(infile, term[num]);num+=1
     end;
     close(infile);
end;
function Search(target:string;num:integer):boolean;
var j:integer;
begin
     Search:=false;
     for j:=1 to num do begin
          if not(pos(target, term[j])=0)
             then Search:=true
     end;
end;
begin
     num:=1;
     InputData(num);
     write('Enter a computer term: ');
     readln(target);
     if Search(target, num)
        then writeln(target, ' is on the list.')
        else writeln(target,  ' is not on the list.');
     readln();

end.

