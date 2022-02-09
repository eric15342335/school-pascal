program Hello;
var choice,num1,num2:integer;
begin
    writeln('1. Addition');
    writeln('2. Subtraction');
    writeln('3. Multiplication');
    writeln('4. Division');
    write('Enter your choice (1-4) : ');
    readln(choice);
    if (choice<1) and (choice>4)
        then writeln('Invalid choice! Bye!')
        else
            begin
                writeln('Enter two numbers:');
                readln(num1,num2);
                case choice of
                1: writeln(num1,' + ',num2,' = ',num1+num2);
                2: writeln(num1,' - ',num2,' = ',num1-num2);
                3: writeln(num1,' * ',num2,' = ',num1*num2);
                4: writeln(num1,' / ',num2,' = ',num1/num2:0:3)
            end
        end
end.
