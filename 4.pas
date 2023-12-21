var
file1, file2 : text;
s : string;
key, i : integer;
begin
  assign(file1,'C:\Users\DANIL\Desktop\12 liba\zad4.1.txt');
  reset(file1);
  assign(file2,'C:\Users\DANIL\Desktop\12 liba\zadravana.txt');
  rewrite(file2);
  writeln('Введите число: ');
  readln(key);
  i:=1;
  while not eof(file1) do begin
    readln(file1, s);
    if i <> key then writeln(file2, s)
    else begin writeln(file2, ''); writeln(file2, s); end;
    inc(i);
  end;
  close(file1);
  Erase(file1);
  close(file2);
  rename(file2, 'C:\Users\DANIL\OneDrive\RAVAN\zad42');
end.