program top10;
const max=10;
type studenttype = record
                   _name:string[30];
                   _trial,_time:integer
                   end;
     studentstack = record
                   top:0..max;
                   entry:array[1..max] of studenttype;
     end;
var datafile:text; student:array[1..max] of studenttype;
    count,comma1,comma2,error,choice:integer;
    // choice is user's choices
    temp:string[30];
    thestack:studentstack;
procedure readdata; // load the data into the arrays from the text file
begin
  assign(datafile, 'mastermind.txt');
  reset(datafile);
  count:=0;
  while not eof(datafile) do
  begin
    count +=1;
    with student[count] do
    begin
      readln(datafile, temp);
      comma1 := pos(',',temp);  // the position of the first comma
      comma2 := comma1 + pos(',', copy(temp, comma1+2, 30));
      // ^ the position of the second comma
      _name := copy(temp, 1, comma1-1);
      val(copy(temp, comma1+2, 1), _trial, error);
      val(copy(temp, comma2+2, 30), _time, error);
      // if error = 0
    end;
  end;
  close(datafile);
end;
procedure push(strg : studenttype);
begin
  with thestack do
  if top = max
     then writeln('The stack is full!')
     else begin
       top += 1;
       entry[top] := strg;
     end;
end;
procedure convert2stack;
begin
  for count:=1 to max do push(student[count]);
end;
procedure pop;
begin
  with thestack do
  if not(top = 0)
     then begin
          writeln(top:2, ' ':2, entry[top]._name, ' ':22-length(entry[top]._name),
                  entry[top]._trial, ' ':16, entry[top]._time:2);
          top:=top-1;
     end;
end;
procedure Sort_time;
// bubble sort
var pass, i:integer; temp:studenttype;
begin
  for pass := 1 to max do
      for i := 1 to max-pass do
          if student[i]._time > student[i+1]._time
             then begin
               temp := student[i];
               student[i] := student[i+1];
               student[i+1] := temp;
               end
end;
procedure Sort_trial;
// bubble sort
var pass, i:integer; temp:studenttype;
begin
  for pass := 1 to max do
      for i := 1 to max-pass do
          if student[i]._trial > student[i+1]._trial
             then begin
               temp := student[i];
               student[i] := student[i+1];
               student[i+1] := temp;
               end
end;
procedure print_list;
begin
  writeln(' ':40, 'Time used');
  writeln('Name':8, ' ':18, 'No. of trials ', ' <seconds>');
  writeln('--------------------------------------------------');
  for count:=1 to max do
  begin
  writeln(count:2, ' ':2, student[count]._name, ' ':22-length(student[count]._name),
          student[count]._trial, ' ':16, student[count]._time:2);
  end;
end;
begin
  readdata;
  choice:=0;
  repeat
  writeln('1. View top 10 records');
  writeln('2. View most recent 10 records');
  writeln('3. Quit');
  writeln;
  write('Enter your choice <1-3> : ');
  readln(choice);
    case choice of
     1:begin
         writeln('View the top 10 records according to :');
         writeln('1. Time used');
         writeln('2. No. of trials used');
         writeln;
         write('Your choice <1-2> : ');
         readln(choice);
         case choice of
          1:begin
              Sort_time;
              print_list;
            end;
           2:begin
               Sort_trial;
               print_list;
             end;
          end;
         end;
     2:begin
       readdata;
       convert2stack;
       writeln(' ':40, 'Time used');
       writeln('Name':8, ' ':18, 'No. of trials ', ' <seconds>');
       writeln('--------------------------------------------------');
       for count:=1 to max do pop;
       end;
    end;
    writeln;
    until choice=3;
end.
