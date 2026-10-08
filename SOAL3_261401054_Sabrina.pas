program Soal3;
uses crt;
var
    N, pilihan, i: integer;
begin
clrscr;
    write('Masukkan nilai N: ');
    readln(N);
    writeln('Kategori deret (1: Ganjil, 2: Genap)');
    write('Pilihan: ');
     readln(pilihan);

  writeln('Hasil deret:');
  i := 0;
  while i < N do
  begin
    inc(i); 

    if (pilihan = 1) and (i mod 2 = 0) then continue;
    if (pilihan = 2) and (i mod 2 <> 0) then continue;

    if i mod 5 = 0 then continue;
    write(i, ' ');
  end;
  writeln;
end.