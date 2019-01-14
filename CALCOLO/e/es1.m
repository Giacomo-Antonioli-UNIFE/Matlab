x = input('inserire numero (base 10): ');
base = input('inserire la base da convertire: ');
prec = input('inserire la precisione: ');
if( base < 2 || base > 16)
    error('base errata!');
end

if( prec < 0 || ~isinteger((int32(prec))))
    error('precisione errato');
end

parteInt = primo(fix(x),base);
parteDec = secondo((x - fix(x)),base,prec);
disp( parteDec);