// eric cheng
program temperatureConvert;

function Fahrenheit (celsius : real): real;
begin
  Fahrenheit := celsius*9/5+32;
end; { Fahrenheit }

var
  tempC : real;
begin { Main program }
  writeln('Celsius to Fahrenheit');
  write('Enter a temperature in degree Celsius: ');
  readln(tempC);
  writeln(tempC:0:2, ' degrees Celsius is equal to ', 
          Fahrenheit(tempC):0:2,' degrees F.');
end. { Main program }
