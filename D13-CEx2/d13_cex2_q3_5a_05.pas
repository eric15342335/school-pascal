program studentIDsearch;
type StudType = record
                ID : string[6];
                Name : string[30];
                ClassID : string[3]
end;
var
  Student : array [1..20] of StudType;
  Count : integer;
  textfile : text;
procedure InputData;
begin
  assign(textfile, 'student.txt');
  reset(textfile);
  while not eof(textfile) do
  begin
    count+=1;
    with Student[count] do
    begin
      readln(textfile,
    end;
  end;
end;

procedure LinearSearch;
var target:string; found:boolean;count:integer;
begin
  repeat
    count+=1;
    with Student[count] do
    if ID = target
    then begin
         index := count;
         found := true;

