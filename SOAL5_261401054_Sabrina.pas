program Soal5;
uses crt;
var
  M, N, i, j: integer;
  nilai, jumlah, rata: real;
  lulus, tidakLulus: integer;
begin
clrscr;
    write('Masukkan jumlah mahasiswa (M): ');
    readln(M);
    write('Masukkan jumlah tugas (N)    : ');
    readln(N);

    lulus := 0;
    tidakLulus := 0;

    for i := 1 to M do
    begin
        writeln;
        writeln('--- Mahasiswa ke-', i, ' ---');
        jumlah := 0;
        for j := 1 to N do
        begin
            write('Nilai tugas ke-', j, ': ');
            readln(nilai);
            jumlah := jumlah + nilai;
    end;
    rata := jumlah / N;
    write('Rata-rata mahasiswa ke-', i, ' = ', rata:0:2, ' -> ');
    if rata >= 65 then
    begin
      writeln('LULUS');
      inc(lulus);
    end
    else
    begin
      writeln('TIDAK LULUS');
      inc(tidakLulus);
    end;
  end;

  writeln;
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.