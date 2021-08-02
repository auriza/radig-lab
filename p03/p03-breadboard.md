---
title: Breadboard dan IC Logika
author: Praktikum Rangkaian Digital
institute: Ilmu Komputer IPB
date: 2019
theme: Dresden
header-includes:
    - \usepackage[labelformat=empty]{caption}
    - \renewcommand{\figurename}{Gambar}
---

# *Breadboard*

## Koneksi internal *breadboard*

- untuk *prototyping*, tanpa harus menyolder komponen
- *power bus strip*: (atas bawah) terhubung secara horizontal
- *terminal strip*: terhubung secara vertikal

\center
![](breadboard_bb.png){width=50%}


## Komponen elektronika

- LED: polar, kaki panjang positif
- resistor: non-polar
- kapasitor: non-polar dan polar
- *push button*: jika ditekan kaki kanan--kiri terhubung

\center
![](breadboard_bb_.png)


## Rangkaian LED sederhana

\center
![](led_bb.png){width=67%}

## Rangkaian LED dengan saklar

\center
![](led-button_bb.png){width=67%}


# IC Logika

## Daftar IC

- 7400 NAND (2x)
- 7402 NOR (2x)
- 7408 AND
- 7432 OR
- 7486 XOR
- 555 timer

## Pin IC logika

- pin 1 dimulai dari pojok kiri bawah *notch* IC

Pin         Fungsi
----        -------
14          Vcc
7           *ground*
1,2,3       *gate* 1
4,5,6       *gate* 2
8,9,10      *gate* 3
11,12,13    *gate* 4


## 7408 AND

\center
![](7408.png){width=50%}

## 7432 OR

\center
![](7432.png){width=50%}

## 7486 XOR

\center
![](7486.png){width=50%}

## 7400 NAND

\center
![](7400.png){width=50%}

## 7402 NOR

\center
![](7402.png){width=50%}



# Pengujian IC 7432

## Rangkaian *breadboard*

\center
![](or-test_bb.png)

## Catatan

- hati-hati saat memasang/melepas IC agar pin tidak bengkok
- saklar harus dihubungkan ke *ground* melalui *pull-down resistor* untuk menghindari *floating input*
- level tegangan *input* yang valid:
    - `LOW`: 0.0--0.8 V
    - `HIGH`: 2.0--5.0 V

## Tugas

- buat rangkaian pada *breadboard* untuk menguji IC 7432
- kumpulkan foto/*screenshot* hasil pengujian ke LMS

