program casegrade;
var exam:integer;
begin
    write('Enter Exam Mark : ');readln(exam);
    case exam of
    0..49:writeln('Grade : F');
    50..59:writeln('Grade : E');
    60..69:writeln('Grade : D');
    70..79:writeln('Grade : C');
    80..89:writeln('Grade : B');
    90..100:writeln('Grade : A');
    end
end.
