program Soal7;
uses crt;
var
    kode: char;
    jam, tarif: longint;
    valid: boolean;
begin
clrscr;
    write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
    readln(kode);
    write('Lama parkir (jam): ');
    readln(jam);

    valid := true;
    tarif := 0;
    kode := upcase(kode);

    case kode of
        'M': if jam > 10 then tarif := 30000
            else tarif := 5000 + (jam - 1) * 3000;
        'K': if jam > 10 then tarif := 10000
            else tarif := 2000 + (jam - 1) * 1000;
        'B': if jam > 10 then tarif := 50000
            else tarif := 10000 + (jam - 1) * 5000;
    else
        valid := false;
    end;

    if not valid then
        writeln('Kode kendaraan tidak valid!')
    else if jam < 1 then
        writeln('Lama parkir minimal 1 jam!')
    else
    begin
        if jam > 10 then
        writeln('(Berlaku tarif maksimal flat)');
        writeln('Total tarif parkir: Rp', tarif);
    end;
end.