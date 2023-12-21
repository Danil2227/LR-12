var
input, output : text; 
sum, count, n : integer;c : string;
begin
  assign(input, 'C:\Users\DANIL\Desktop\12 liba\zad7.1.txt');
  assign(output, 'C:\Users\DANIL\Desktop\12 liba\zad7.2.txt');
  reset(input);
  rewrite(output);
  while not eof(input) do begin
    readln(input, c);
    val(c, n, count);
    sum:=0;
    for i:integer:=1 to n do begin
      count:=0;
      for j:integer:=1 to i do
        if (i mod j) = 0 then inc(count);  
      if count = 5 then 
        sum:=sum+i;
      str(sum, c);
    end;
    writeln(output, c);
  end;
  close(input);
  close(output);
end.