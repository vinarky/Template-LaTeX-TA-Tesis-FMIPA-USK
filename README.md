# Template-LaTeX-TA-Tesis-FMIPA-USK
TATesis - Template LaTeX Tugas Akhir & Tesis FMIPA USK
TATesis.cls adalah document class LaTeX yang dirancang berdasarkan panduan penulisan karya ilmiah di Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA), Universitas Syiah Kuala tahun 2024. Template LaTeX ini tidak dibuat secara resmi oleh pihak FMIPA USK melainkan ditulis oleh Galang Vinarky, salah satu alumni Magister Matematika. Agar format penulisannya lebih valid, selalu kembali merujuk kepada panduan terbaru yang dikeluarkan pihak fakultas.

---

## ✨ Fitur Utama

* **Otomasi Strata & Jenis Dokumen**
  Satu template untuk semua kebutuhan. Cukup ubah satu kode angka untuk beralih antara:
  * Proposal vs Laporan Akhir
  * Sarjana (S1) vs Magister (S2)

* **Format Standar FMIPA USK**
  * Margin: Top 3 cm, Bottom 3 cm, Left 3.5 cm, Right 3 cm
  * Font: Times New Roman style (menggunakan paket newtxtext)
  * Spasi: 1.5 lines

* **Penomoran Otomatis**
  * Bab menggunakan Angka Romawi (I, II, III, ...)
  * Sub-bab, Gambar, Tabel, dan Persamaan mengikuti format Bab.Nomor
    Contoh: Gambar 4.1

* **Manajemen Lampiran**
  * Lingkungan \begin{lampiran}
  * Otomatis terdaftar di Daftar Lampiran

---

## 🚀 Cara Penggunaan

### 1. Atur Jenis Dokumen

Buka file main.tex (atau file .tex utama) dan atur perintah:
    \jenis{n}

| Kode | Jenis Dokumen | Jenjang | Keterangan |
| --- | --- | --- | --- |
| 1 | Proposal Penelitian | S1 | Sarjana |
| 2 | Proposal Tesis | S2 | Magister |
| 3 | Tugas Akhir / Skripsi | S1 | Sarjana |
| 4 | Tesis | S2 | Magister |

---

### 2. Isi Identitas Penulis

Lengkapi data diri pada bagian preamble (sebelum \begin{document}):

    \author{Nama Lengkap Anda}
    \npm{XXXXXXXXXXXXX}
    \prodi{Matematika}
    \departemen{Matematika}
    \pembimbingSatu{Dr. Nama Pembimbing I}{NIP. 19xxxxxxxxxxxxxx}
    \pembimbingDua{Dr. Nama Pembimbing II}{NIP. 19xxxxxxxxxxxxxx}
    \koordinator{Dr. Nama Koordinator}{NIP. 19xxxxxxxxxxxxxx}
    \dekan{Prof. Dr. Nama Dekan}{NIP. 19xxxxxxxxxxxxxx}

---

### 3. Generate Halaman Formal

Gunakan perintah berikut di dalam dokumen:

| Perintah LaTeX | Fungsi |
| --- | --- |
| \halamanJudul | Halaman sampul |
| \halamanPengesahan | Lembar pengesahan |
| \bebasPlagiasi | Pernyataan orisinalitas |
| \abstrakID{kunci}{isi} | Abstrak Indonesia |
| \abstrakEN{keys}{text} | Abstract Inggris |
| \kataPengantar{...} | Kata Pengantar |

---

## 📦 Persyaratan Sistem

* Core: geometry, setspace, indentfirst
* Font: newtxtext, newtxmath
* Formatting: titlesec, tocloft, fancyhdr, etoolbox
* Bahasa: babel (indonesian)
* Sitasi: natbib

---

## 📂 Struktur File

| Nama File | Deskripsi |
| --- | --- |
| TATesis.cls | File inti format |
| main.tex | File utama |
| figures/ | Folder gambar |
| bibFMIPAUSK.bst | Style pustaka |
| references.bib | Database referensi |

---

## 📝 Contoh Penulisan Bab

    \input{BAB I}
    \input{BAB II}
    \input{BAB III}
    % \input{BAB IV}
    % \input{BAB V}
