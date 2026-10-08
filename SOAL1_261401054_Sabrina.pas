program Soal1;
uses crt;
var
    N, i: integer;
    harga, total, diskon, bayar, persen: real;
begin
clrscr;
    write('Masukkan jumlah barang (N): ');
    readln(N);
    total := 0;

    writeln;
    for i := 1 to N do
    begin
        write('Harga barang ke-', i, ' : Rp');
        readln(harga);
        total := total + harga;
        writeln('   -> Barang ke-', i, ' tercatat Rp', harga:0:0);
    end;
    if total < 100000 then
        persen := 0
    else if total < 500000 then
        persen := 10
    else
        persen := 20;
    diskon := total * persen / 100;
    bayar := total - diskon;
    writeln;
    writeln('Total Sebelum Diskon : Rp', total:0:0);
    writeln('Diskon (', persen:0:0, '%)       : Rp', diskon:0:0);
    writeln('Total Bayar Akhir    : Rp', bayar:0:0);
end.