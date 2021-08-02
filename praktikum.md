# Praktikum Radig

Plot asisten praktikum

Rabu
- UTS: ~~Romano~~, Adel, AlvinR
- UAS: AlvinR, Alif

Jumat
- UTS: Rafiqah, Restu
- UAS: Husna, Faldi


## Materi Praktikum

1. Bilangan biner (R)
2. Sistem komplemen (R)
3. IC logika: pengenalan rangkaian digital
4. IC logika: pengujian dan simulasi (+tugas)
5. Verilog: pengenalan sintaks dan latihan
6. K-Map: simulasi 7-segment decoder
7. Latihan pra-UTS (R)

8. Adder: half-adder, full-adder
9. Adder: 2-bit, 4-bit (+tugas)
10. ALU: adder-subtractor dan multiplier 4-bit
11. Latch: SR, D
12. Flip-flop: D, JK, T
13. Counter: 2-bit, 4-bit (+tugas)
14. Latihan pra-UAS (R)

## 1. Sistem bilangan biner

- enroll LMS (key: *radigganjil2019*)
- konversi desimal ke biner, oktal, dan heksadesimal
- operasi aritmatika biner (tambah, kali)
- pecahan dalam biner
- latihan soal di buku (lihat LMS):
    - 1.7--1,13

## 2. Sistem komplemen

- pembagian breadboard, kabel, dan IC
- komplemen r dan r-1
- pengurangan dengan komplemen
- latihan soal di buku:
    - 1.14--1.19


## 3a. Pengenalan Breadboard dan Komponen Elektronik

- pengenalan breadboard
    - dipakai untuk prototyping, tanpa harus menyolder komponen
    - breadboard:
        - power rail
        - terminal strip
        - DIP IC support
        - binding post
    - simulasi layout breadboard dengan Fritzing
    - Fritzing: import parts IC <https://drive.google.com/file/d/0B47v_9Mobz9yVzFoaEVLNS1TX2c/view>
- power supply 5V dari USB
    - kabel merah: Vcc (+)
    - kabel hitam: ground (-)
- rangkaian LED sederhana
    - simulasi rangkaian: <https://tinyurl.com/y9n8r2br>
    - LED: polar (kaki panjang: +)
    - resistor: non-polar, untuk membatasi arus
- rangkaian LED dengan saklar
    - simulasi rangkaian: <https://tinyurl.com/y9kkhl2z>
    - saklar push-button (momentary, normally-open)

## 3b. Pengenalan IC Logika

- inventaris
    - tiap kelompok menulis daftar tipe IC yang dimilikinya
    - misal: HD74LS00, SN74LS02N, ...
    - total 10 IC:
        - 7400 x2       - 7408 x2
        - 7402 x2       - 7432 x2
        - 7404 x1       - 7486 x1
    - kumpulkan daftarnya ke asprak
- IC TTL (transistor-transitor logic)
    - penjelasan pin IC, _lihat_: buku hlm 440
    - hati-hati saat memasang/melepas IC ke breadboard agar pin tidak bengkok
- simulasi IC 7400 (NAND)
    - simulasi rangkaian: <https://tinyurl.com/yaftnfb4>
    - simulasi Logisim, _lihat_: <nand-test.png>
    - tabel kebenaran simulasi
- pengujian IC 7400 (NAND)
    - _lihat_: <nand-test_bb.png>
    - pull-down resistor diperlukan untuk menghindari floating input
    - level tegangan masukan logika LOW: 0--0.8 V, HIGH: 2--5 V
    - tabel kebenaran pengujian


## 4. IC Logika

- pengenalan Logisim untuk simulasi logic gate dasar
    - cek keluaran tabel kebenaran
- pengenalan Verilog untuk simulasi logic gate dasar
    - cek keluaran waveform
- membuat rangkaian untuk mengecek kebenaran semua IC logic
    - 7400 NAND
    - 7402 NOR
    - 7408 AND
    - 7432 OR
    - 7486 XOR
- membuat laporan untuk salah satu IC logic (diundi)
- templat laporan: <https://github.com/auriza/radig-lab/blob/master/lab/p04/laporan.md>
    - laporan dikirim ke email asprak, cc: <auriza@apps.ipb.ac.id>


## 5. Verilog HDL

- pengenalan sintaks Verilog (buku § 3.9 hlm 108--118)
    - modul     : `module, endmodule, input, output, wire`
    - gate      : `and, or, not, nand, nor, xor`
    - modul uji : `reg, wire, initial, begin, end, #delay, $finish, $monitor, $time`
    - assignment: `assign, &, |, ~, ^`
- latihan soal di buku:
    - 3.31, 3.32, 3.34, 3.35, 3.36, 3.39


## 6. K-map

- BCD to 7-segment decoder
    - lihat gambar P4.9 hlm 183 di buku
    - masukan: BCD (4 bit)
    - keluaran: 7 fungsi Boolean untuk tiap lampu 7-segmen (a, b, c, d, e, f, g)
    - buat tabel kebenaran untuk tiap fungsi
    - sederhanakan tiap fungsi dengan k-map
    - gunakan kondisi *don't care* untuk input invalid (10--15)
    - tulis di kertas dan kumpulkan pada akhir praktikum

```
masukan     0000    0001    0010    0011    ...     1001
             _               _       _               _
keluaran    | |       |      _|      _|             |_|
            |_|       |     |_       _|              _|
```

- simulasi pada Logisim
    - terapkan fungsi Boolean di atas pada Logisim
    - gunakan "7-segment display" sebagai keluaran
    - lihat contoh pada gambar di bawah
    - cek keluaran untuk tiap masukan digit BCD
    - kumpulkan berkas `.circ` di LMS paling lambat H+2


## 7. Latihan UTS

- latihan soal UTS tahun lalu


## 8. Binary Adder

- half adder (logisim, breadboard)
- full adder (logisim, breadboard)
- tugas: desain 2-bit full adder (logisim, fritzing)

