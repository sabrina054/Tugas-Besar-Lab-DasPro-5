program Soal10;
uses crt;
var
    n: integer;
begin
clrscr;
    write('Input (1-7): ');
    readln(n);
    case n of
        1: writeln('Output: Hari Senin');
        2: writeln('Output: Hari Selasa');
        3: writeln('Output: Hari Rabu');
        4: writeln('Output: Hari Kamis');
        5: writeln('Output: Hari Jumat');
        6: writeln('Output: Hari Sabtu');
        7: writeln('Output: Hari Minggu');
    else
        writeln('Output: Angka harus 1 sampai 7!');
  end;
end.