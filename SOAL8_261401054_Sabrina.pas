program Soal8;
uses crt;
var
    gol: char;
    jam, lembur, jamLembur: longint;
    pokok, bonus, total: longint;
    valid: boolean;
begin
clrscr;
    write('Golongan (A/B/C): ');
    readln(gol);
    write('Total jam kerja per minggu: ');
    readln(jam);

    gol := upcase(gol);
    valid := true;
    case gol of
        'A': pokok := 1500000;
        'B': pokok := 2000000;
        'C': pokok := 2500000;
    else
        begin
        valid := false;
        pokok := 0;
        end;
    end;

    if not valid then
        writeln('Golongan tidak valid!')
    else
    begin
        if jam > 40 then jamLembur := jam - 40 else jamLembur := 0;
        lembur := jamLembur * 20000;

        bonus := 0;
        if (gol = 'C') and (jam > 50) then bonus := 100000;

        total := pokok + lembur + bonus;

        writeln;
        writeln('Gaji Pokok       : Rp', pokok);
        writeln('Lembur (', jamLembur, ' jam) : Rp', lembur);
        writeln('Bonus            : Rp', bonus);
        writeln('Total Gaji Akhir : Rp', total);
    end;
end.