program nilai_mahasiswa;
{I.S    : Memasukan NIM(nim),Nama(nama),Nilai Kehadiran(hadir),Nilai Tugas(tugas),
          Nilai UTS(uts), Niai UAS(uas)}
{F.S    : Menghasilkan Rata-rata Nilai Akhir(rataNa) dan Index Nilai(index)}

uses crt;
var
Indeks :Char;
        Hadir,Tugas,UTS,UAS,NilaiAkhir,Rata_rata,NARR :
        Real;
        No,Y,JumlahA,JumlahB,JumlahC,JumlahD,JumlahE :
        integer;
        Nim,Nama : string;

function Nilai_Akhir(Hadir,Tugas,UTS,UAS : Real) : Real;
{I.S     : Memasukan Nilai Kehadiran(hadir),Nilai Tugas(tugas), Nilai UTS(uts),
             Nilai UAS(uas)}
{F.S     : Menghasilkan Nilai Akhir(rata_rata)}
 begin
  NilaiAkhir:=(Hadir*0.1)+(Tugas*0.2)+(UTS*0.3)+(UAS*0.4);
  NARR:=NARR+NilaiAkhir;
   if(NilaiAKhir>=80)
    then
     begin
      indeks:='A';
      JumlahA:=JumlahA + 1;
     end
   Else if(NilaiAkhir>=70)
    then
     begin
      indeks:='B';
      JumlahB:=JumlahB + 1;
     end
   Else if(NilaiAkhir>=60)
    then
     begin
      indeks:='C';
      JumlahC:=JumlahC + 1;
     end
   Else if(NilaiAkhir>=50)
    then
     begin
      indeks:='D';
      JumlahD:=JumlahD + 1;
     end
   Else
    begin
      indeks:='E';
      JumlahE:=JumlahE + 1;
     end;
      Gotoxy(57,Y);writeln(NilaiAkhir:0:1);
      Gotoxy(70,Y);writeln(indeks);
      Nilai_Akhir:=NilaiAkhir;
     end; //endfunction

function ratarata(NARR : Real): Real;
 begin
   Rata_rata:=NARR/(no-1);
   Writeln('Rata_rata Nilai Akhir : ',Rata_rata:0:2);
   readln;
   ratarata:=Rata_rata;
 end; //EndFunct
procedure input_data(Var Nim,Nama : string; Var Hadir,Tugas,UTS,UAS: Real);
 begin
  NO:=1;
   while (NIM <> 'STOP') AND (NIM <> 'Stop') AND (NIM <> 'stop') do
    begin
     writeln('|    |           |      |       |       |     |     |            |        |');
     gotoxy(3,Y);writeln(NO);
     gotoxy(8,Y);readln(NIM);
      if (NIM <> 'STOP') AND (NIM <> 'Stop') AND (NIM <> 'stop')
       then
        begin
         Gotoxy(20,Y);readln(Nama);
         Gotoxy(29,Y);readln(Hadir);
         Gotoxy(36,Y);readln(Tugas);
         Gotoxy(43,Y);readln(UTS);
         Gotoxy(49,Y);readln(UAS);
         NIlai_Akhir(Hadir,Tugas,UTS,UAS);
          Y:=Y+1;
          NO:=NO+1;
        end;
        gotoxy(1,Y);clreol;
   end;
   end;
procedure output_indeks(var JumlahA,JumlahB,JumlahC,JumlahD,JumlahE : integer);
 begin
  writeln('Jumlah Indeks A :',JumlahA,'Mahasiswa');
  writeln('Jumlah Indeks B :',JumlahB,'Mahasiswa');
  writeln('Jumlah Indeks C :',JumlahC,'Mahasiswa');
  writeln('Jumlah Indeks D :',JumlahD,'Mahasiswa');
  writeln('Jumlah Indeks E :',JumlahE,'Mahasiswa');
   readln;
 end;

 begin
  writeln('---------------------------------------------------------------------------');
  writeln('| NO |    NIM    | Nama | Hadir | Tugas | UTS | UAS | NilaiAkhir | Indeks |');
  writeln('---------------------------------------------------------------------------');
   Y:=4;
    input_data(NIM,Nama,Hadir,Tugas,UTS,UAS);
    output_indeks(JumlahA,JumlahB,JumlahC,JumlahD,JumlahE);
    ratarata(NARR);


end.
