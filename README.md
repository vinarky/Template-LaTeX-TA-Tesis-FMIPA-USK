# Template-LaTeX-TA-Tesis-FMIPA-USK
TATesis - Template LaTeX Tugas Akhir & Tesis FMIPA USK
TATesis.cls adalah document class LaTeX yang dirancang berdasarkan panduan penulisan karya ilmiah di Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA), Universitas Syiah Kuala tahun 2024. Template LaTeX ini tidak dibuat secara resmi oleh pihak FMIPA USK melainkan ditulis oleh Galang Vinarky, salah satu alumni Magister Matematika. Agar format penulisannya lebih valid, selalu kembali merujuk kepada panduan terbaru yang dikeluarkan pihak fakultas.
✨ Fitur Utama
 * Otomasi Strata: Mendukung Proposal dan Laporan Akhir untuk jenjang S1 (Sarjana) dan S2 (Magister) hanya dengan mengganti satu angka kode.
 * Format Standar: Margin (3.5cm kiri, 3cm lainnya), spasi 1.5, dan font Times New Roman style sesuai pedoman fakultas.
 * Penomoran Otomatis: Pengaturan otomatis untuk penomoran Bab (Romawi), Sub-bab, Gambar, Tabel, dan Persamaan Matematika.
 * Environment Lampiran: Tersedia fitur khusus \begin{lampiran} yang otomatis terdaftar di Daftar Lampiran.
🚀 Cara Penggunaan
1. Menentukan Jenis Dokumen
Pada file utama (.tex), tentukan jenis dokumen Anda pada perintah \jenis{...}:
 * 1: Proposal Tugas Akhir (S1)
 * 2: Proposal Tesis (S2)
 * 3: Tugas Akhir / Skripsi (S1)
 * 4: Tesis (S2)
2. Identitas Mahasiswa
Isi data diri Anda di bagian preamble:
\author{Nama Lengkap Anda}
\npm{XXXXXXXXXXXXX}
\prodi{Matematika}
\pembimbingSatu{Nama Pembimbing I}{NIP...}
\pembimbingDua{Nama Pembimbing II}{NIP...}
\koordinator{Nama Koordinator Prodi}{NIP...}

3. Komponen Dokumen
Gunakan perintah berikut untuk membuat halaman formal secara instan:
 * \halamanJudul: Mencetak sampul depan (Cover).
 * \halamanPengesahan: Mencetak lembar pengesahan pembimbing dan pejabat terkait.
 * \bebasPlagiasi: Mencetak surat pernyataan bebas plagiasi.
 * \abstrakID{kata, kunci}{isi abstrak}: Abstrak Bahasa Indonesia.
 * \abstrakEN{keywords}{abstract content}: Abstrak Bahasa Inggris.
🛠 Persyaratan (Dependencies)
Pastikan distribusi LaTeX Anda memiliki paket berikut:
 * newtxtext & newtxmath
 * titlesec & tocloft
 * indonesian babel support
 * fancyhdr
📂 Struktur File
 * TATesis.cls: File inti template (jangan diubah kecuali diperlukan).
 * figures/USK-BW.png: File logo Universitas Syiah Kuala (WAJIB ADA).
 * references.bib: Database daftar pustaka Anda.
 * bibFMIPAUSK.bst: File style sitasi (WAJIB ADA).
