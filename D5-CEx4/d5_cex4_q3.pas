program taxpayer;
var
Income:longint;
MStatus:char;
NChild:integer;
NParent:integer;
TotalAllow:longint;
ChargeIncome:longint;
begin
    write('Total annual income? ');readln(Income);
    write('Marital status (M = married, S = single)? ');readln(MStatus);
    write('Number of children? ');readln(NChild);
    write('Number of dependent parent? ');readln(NParent);
    TotalAllow:=30000;
    if NChild>5
        then TotalAllow+=10000*5
        else TotalAllow+=10000*NChild;
    if NParent>5
        then TotalAllow+=15000*5
        else TotalAllow+=15000*NParent;
    case MStatus of
        'M':TotalAllow+=30000;
        'S':TotalAllow+=0
    end;
    ChargeIncome:=Income-TotalAllow;
    case ChargeIncome of
        0..20000:writeln('Tax for you: is $', ChargeIncome*0.1);
        20001..40000:writeln('Tax for you: is $', 2000+(ChargeIncome-20000)*0.2)
        else if ChargeIncome<0
	        then writeln('Tax for you: is $0')
		else writeln('Tax for you: is $',6000+(ChargeIncome-40000)*0.3);
    end;
end.
