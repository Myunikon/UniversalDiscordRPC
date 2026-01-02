# Universal Discord RPC (Stealth Mode)
Sebuah generator Discord Rich Presence (RPC) yang ringan dan dapat dikustomisasi sepenuhnya. Aplikasi ini berjalan secara otomatis di latar belakang untuk berbagai software, termasuk FL Studio, Ableton Live, CapCut, dan lainnya.
## ✨ Fitur Utama
- **Integrasi System Tray**: Berjalan di area notifikasi (dekat jam), memudahkan kontrol tanpa memenuhi taskbar.
- **Mode Stealth**: Beroperasi secara senyap di latar belakang tanpa jendela aktif.
- **Auto-Startup**: Opsi untuk berjalan otomatis saat Windows dinyalakan.
- **Auto-Reload**: Pengaturan di `config.json` akan langsung diterapkan tanpa perlu merestart aplikasi.
- **Pemindaian Cerdas**: Menggunakan resource CPU 0% saat idle dan RAM yang sangat rendah (~20MB).
- **Deteksi Judul Pintar**: Mampu memindai hingga ke proses anak (child process) untuk mendeteksi nama projek yang sedang dikerjakan secara akurat.
## 🚀 Cara Instalasi
### Opsi 1: Download File Siap Pakai (Rekomendasi)
1. Kunjungi halaman [Releases](https://github.com/makcrtve/UniversalDiscordRPC/releases).
2. Unduh file `UDRPC_v1.2_Release.zip` versi terbaru.
3. Ekstrak file ZIP tersebut ke folder pilihan Anda.
4. Jalankan `UniversalDiscordRPC.exe`.
### Opsi 2: Build Sendiri (Untuk Developer)
1. Unduh atau clone repository ini.
2. Pastikan Anda telah menginstal [Python](https://www.python.org/).
3. Jalankan file `build.bat`. Script ini akan otomatis:
   - Menginstal library yang diperlukan (`pystray`, `Pillow`, `pypresence`, `psutil`).
   - Melakukan kompilasi menjadi file `.exe` tunggal di dalam folder `dist`.
   - Membuat paket rilis ZIP secara otomatis.
## ⚙️ Konfigurasi
Anda dapat menambahkan software yang ingin dideteksi dengan mengedit file `config.json`. 
Aplikasi ini mendukung variabel dinamis seperti:
- `{window_title}`: Menampilkan judul jendela/projek aktif.
- `{app_name}`: Menampilkan nama aplikasi yang diatur di konfigurasi.
- `{process_name}`: Menampilkan nama file `.exe` yang terdeteksi.
*Panduan lengkap pengisian variabel sudah tersedia di dalam file `config.json`.*
## 🛠️ Penggunaan & Kontrol
- **Mematikan Aplikasi**: Klik kanan ikon **Universal Discord RPC** di System Tray dan pilih **Exit**.
- **Auto-Startup**: Jalankan `install.bat` di dalam folder rilis untuk mendaftarkan aplikasi ke Windows Startup.
- **Troubleshooting**: Jika terjadi kendala, silakan periksa file `debug.log` yang ada di folder aplikasi.
## 📦 Dependensi
- `pypresence`
- `psutil`
- `pystray`
- `Pillow`
- `pyinstaller` (untuk proses build)
---
*Dibuat dengan ❤️ untuk para kreator oleh **makcrtve**.*
