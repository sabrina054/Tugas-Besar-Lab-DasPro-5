program Soal2_Login;
uses crt;
const
    SANDI = 'nana123';
    MAKS  = 3;
var
    input: string;
    percobaan: integer;
    berhasil: boolean;
begin
clrscr;
    percobaan := 0;
    berhasil := false;
    repeat
        inc(percobaan);
        write('Masukkan kata sandi (percobaan ', percobaan, '/', MAKS, '): ');
        readln(input);
    
    if input = SANDI then
    begin
        writeln('Login Berhasil! Selamat Datang');
        berhasil := true;
        break; { hentikan loop saat sandi benar }
    end
    else
        writeln('Kata sandi salah!');
        until percobaan >= MAKS;

    if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.