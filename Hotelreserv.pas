program ReservasiHotelSederhana;
uses crt;

const
  MaksPesanan = 100;

type
  DataPesanan = record
    nama: string;
    tipeKamar: integer;
    jumlahMalam: integer;
    hargaPerMalam: real;
    totalHarga: real;
    diskon: real;
    totalBayar: real;
  end;

var
  pilihan, jumlahPesanan, i: integer;
  pesanan: array[1..MaksPesanan] of DataPesanan;
  hargaTotal, diskonTotal, tagihanTotal: real;
  uangDibayar, kembalian: real;
  lanjutPesan: char;
  valid: boolean;

begin
  repeat
    clrscr;
    writeln('========================================');
    writeln('      APLIKASI RESERVASI HOTEL KAMI');
    writeln('========================================');
    writeln('1. Lihat Daftar Tipe Kamar & Harga');
    writeln('2. Pesan Kamar Hotel');
    writeln('3. Keluar Program');
    writeln('----------------------------------------');
    write('Masukkan pilihan menu (1-3): ');
    readln(pilihan);

    case pilihan of

      1:
        begin
          clrscr;
          writeln('========================================');
          writeln('       DAFTAR TIPE KAMAR & HARGA');
          writeln('========================================');
          writeln('1. Standard Room - Rp 350000 / malam');
          writeln('2. Deluxe Room   - Rp 600000 / malam');
          writeln('3. Suite Room    - Rp 1000000 / malam');
          writeln('========================================');
          writeln('Tekan Enter untuk kembali...');
          readln;
        end;

      2:
        begin
          { Memulai transaksi baru }
          jumlahPesanan := 0;
          hargaTotal := 0;
          diskonTotal := 0;
          tagihanTotal := 0;

          repeat
            clrscr;
            writeln('========================================');
            writeln('          FORM PEMESANAN KAMAR');
            writeln('========================================');

            if jumlahPesanan < MaksPesanan then
            begin
              jumlahPesanan := jumlahPesanan + 1;

              write('Nama pemesan: ');
              readln(pesanan[jumlahPesanan].nama);

              writeln;
              writeln('Pilih tipe kamar:');
              writeln('1. Standard - Rp 350000');
              writeln('2. Deluxe   - Rp 600000');
              writeln('3. Suite    - Rp 1000000');

              repeat
                write('Pilihan kamar (1-3): ');
                readln(pesanan[jumlahPesanan].tipeKamar);

                if (pesanan[jumlahPesanan].tipeKamar < 1) or
                   (pesanan[jumlahPesanan].tipeKamar > 3) then
                  writeln('Pilihan kamar tidak valid!');
              until (pesanan[jumlahPesanan].tipeKamar >= 1) and
                    (pesanan[jumlahPesanan].tipeKamar <= 3);

              repeat
                write('Jumlah malam menginap: ');
                readln(pesanan[jumlahPesanan].jumlahMalam);

                if pesanan[jumlahPesanan].jumlahMalam <= 0 then
                  writeln('Jumlah malam harus lebih dari 0!');
              until pesanan[jumlahPesanan].jumlahMalam > 0;

              { Menentukan harga kamar }
              case pesanan[jumlahPesanan].tipeKamar of
                1: pesanan[jumlahPesanan].hargaPerMalam := 350000;
                2: pesanan[jumlahPesanan].hargaPerMalam := 600000;
                3: pesanan[jumlahPesanan].hargaPerMalam := 1000000;
              end;

              { Menghitung harga setiap pesanan }
              pesanan[jumlahPesanan].totalHarga :=
                pesanan[jumlahPesanan].hargaPerMalam *
                pesanan[jumlahPesanan].jumlahMalam;

              { Diskon 15% jika lebih dari 3 malam }
              if pesanan[jumlahPesanan].jumlahMalam > 3 then
                pesanan[jumlahPesanan].diskon :=
                  pesanan[jumlahPesanan].totalHarga * 0.15
              else
                pesanan[jumlahPesanan].diskon := 0;

              pesanan[jumlahPesanan].totalBayar :=
                pesanan[jumlahPesanan].totalHarga -
                pesanan[jumlahPesanan].diskon;

              { Menambahkan ke total seluruh pesanan }
              hargaTotal := hargaTotal +
                pesanan[jumlahPesanan].totalHarga;

              diskonTotal := diskonTotal +
                pesanan[jumlahPesanan].diskon;

              tagihanTotal := tagihanTotal +
                pesanan[jumlahPesanan].totalBayar;

              writeln;
              writeln('Pesanan berhasil ditambahkan!');
              writeln('Total tagihan sementara: Rp ',
                      tagihanTotal:0:0);
            end
            else
              writeln('Batas maksimal pesanan telah tercapai.');

            { Menanyakan apakah ingin memesan lagi }
            repeat
              writeln;
              write('Pesan kamar lagi? (y/n): ');
              readln(lanjutPesan);

              if not ((lanjutPesan = 'y') or
                      (lanjutPesan = 'Y') or
                      (lanjutPesan = 'n') or
                      (lanjutPesan = 'N')) then
                writeln('Masukkan y atau n!');
            until (lanjutPesan = 'y') or
                  (lanjutPesan = 'Y') or
                  (lanjutPesan = 'n') or
                  (lanjutPesan = 'N');

          until (lanjutPesan = 'n') or
                (lanjutPesan = 'N') or
                (jumlahPesanan >= MaksPesanan);

          { Mencetak struk gabungan }
          clrscr;
          writeln('================================================');
          writeln('                 HOTEL KAMI');
          writeln('             STRUK PEMBAYARAN HOTEL');
          writeln('================================================');
          writeln('Jumlah Pemesanan : ', jumlahPesanan);
          writeln('------------------------------------------------');

          for i := 1 to jumlahPesanan do
          begin
            writeln('PESANAN KE-', i);
            writeln('Nama Pemesan    : ', pesanan[i].nama);

            case pesanan[i].tipeKamar of
              1: writeln('Tipe Kamar      : Standard Room');
              2: writeln('Tipe Kamar      : Deluxe Room');
              3: writeln('Tipe Kamar      : Suite Room');
            end;

            writeln('Harga per Malam : Rp ',
                    pesanan[i].hargaPerMalam:0:0);
            writeln('Jumlah Malam    : ',
                    pesanan[i].jumlahMalam);
            writeln('Total Harga     : Rp ',
                    pesanan[i].totalHarga:0:0);
            writeln('Diskon          : Rp ',
                    pesanan[i].diskon:0:0);
            writeln('Subtotal        : Rp ',
                    pesanan[i].totalBayar:0:0);
            writeln('------------------------------------------------');
          end;

          writeln('TOTAL HARGA     : Rp ', hargaTotal:0:0);
          writeln('TOTAL DISKON    : Rp ', diskonTotal:0:0);
          writeln('TOTAL TAGIHAN   : Rp ', tagihanTotal:0:0);
          writeln('================================================');

          { Proses pembayaran }
          writeln;
          writeln('             PEMBAYARAN');
          writeln('================================================');

          repeat
            write('Masukkan uang pembayaran: Rp ');
            readln(uangDibayar);

            if uangDibayar < tagihanTotal then
            begin
              writeln('Uang pembayaran masih kurang!');
              writeln('Kekurangan: Rp ',
                      (tagihanTotal - uangDibayar):0:0);
              writeln;
            end;
          until uangDibayar >= tagihanTotal;

          { Menghitung kembalian }
          kembalian := uangDibayar - tagihanTotal;

          { Struk akhir pembayaran }
          writeln;
          writeln('================================================');
          writeln('              BUKTI PEMBAYARAN');
          writeln('================================================');
          writeln('Total Tagihan   : Rp ', tagihanTotal:0:0);
          writeln('Uang Dibayar    : Rp ', uangDibayar:0:0);
          writeln('Kembalian       : Rp ', kembalian:0:0);
          writeln('Status          : LUNAS');
          writeln('================================================');
          writeln('Terima kasih telah memilih Hotel Kami!');
          writeln('Mohon simpan struk sebagai bukti pembayaran.');
          writeln('================================================');

          writeln;
          writeln('Tekan Enter untuk kembali ke menu utama...');
          readln;
        end;

      3:
        begin
          clrscr;
          writeln('========================================');
          writeln('Terima kasih telah menggunakan');
          writeln('program reservasi hotel kami!');
          writeln('========================================');
        end;

      else
        begin
          writeln('Pilihan tidak valid! Pilih angka 1-3.');
          writeln('Tekan Enter untuk melanjutkan...');
          readln;
        end;

    end;

  until pilihan = 3;

end.