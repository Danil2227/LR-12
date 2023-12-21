var
filetext : text;s : string;
begin
assign(filetext,'C:\Users\DANIL\Desktop\12 liba\zad3.txt');
append(filetext);
writeln('Введите строку: ');
readln(s);
write(filetext, s);
close(filetext);
end.