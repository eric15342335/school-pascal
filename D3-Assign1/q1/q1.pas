// eric cheng
program CircleAnalysis1;
uses
  math;
var
  radius : real;
begin
  writeln('Analysis of Circle');
  write('Input the radius: ');
  readln(radius);
  writeln('Area of Circle = ', pi*radius**2 :0:2);
  writeln('Circumference of circle = ', pi*2*radius :0:2);
end.
