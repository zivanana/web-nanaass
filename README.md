# D'ANS Personal Profile — CRUD PWA

Proyek personal profile website Zivana Rodian Saputri dengan fitur lengkap memenuhi semua kriteria tugas.

---

## ✅ Checklist Kriteria

| # | Kriteria | Implementasi |
|---|----------|-------------|
| 1 | **Backend & Database** | Node.js + Express + **Neon.tech PostgreSQL** |
| 2 | **Async JavaScript** | `async/await` + `fetch()` di semua operasi CRUD artikel |
| 3 | **Service Worker + Push Notif** | `sw.js` — cache, push notification, background sync |
| 4 | **PWA** | `manifest.json`, installable, offline support, icon 192 & 512 |

---

## 🗂 Struktur File

```
cms_nanaass_v2/
├── index.html          ← Halaman utama (SPA)
├── script.js           ← Logic: CRUD, SW, Push Notif, PWA install
├── style.css           ← Styling lengkap
├── sw.js               ← Service Worker (cache + push + sync)
├── manifest.json       ← PWA manifest
├── database.sql        ← Schema PostgreSQL untuk Neon.tech
├── images/
│   ├── icon-192.png    ← PWA icon
│   ├── icon-512.png    ← PWA icon
│   └── pp tulip.jpeg
└── backend/
    ├── server.js
    ├── config_db.js    ← Neon.tech connection (@neondatabase/serverless)
    ├── routes_auth.js
    ├── routes_articles.js
    ├── middleware_auth.js
    └── package.json
```

---

## ⚙️ Setup Backend (Neon.tech)

### 1. Buat database di Neon.tech
- Daftar di https://neon.tech (gratis)
- Buat project baru → salin **Connection String**

### 2. Setup `.env`
```
DATABASE_URL=postgresql://user:pass@ep-xxx.us-east-2.aws.neon.tech/neondb?sslmode=require
JWT_SECRET=rahasia_jwt_ganti_ini
PORT=5000
```

### 3. Jalankan schema di Neon SQL Editor
Salin isi `database.sql` → paste di Neon Console → Run

### 4. Install & jalankan backend
```bash
cd backend
npm install
npm run dev
```

---

## 🌐 Jalankan Frontend

Karena menggunakan Service Worker, **harus pakai server** (bukan buka file langsung):

```bash
# Opsi 1 — VS Code Live Server (klik kanan index.html → Open with Live Server)

# Opsi 2 — Python
python3 -m http.server 8080
# lalu buka: http://localhost:8080

# Opsi 3 — Node.js
npx serve .
```

---

## 🔔 Cara Kerja Push Notification

1. Buka website → browser minta izin notifikasi → klik **Izinkan**
2. Tombol 🔔 muncul di topbar kanan
3. Klik 🔔 untuk test notifikasi
4. Setiap kali **artikel disimpan** ke database → notifikasi otomatis tampil

## 📲 Cara Install PWA

1. Buka di Chrome/Edge
2. Tunggu tombol **📲 Install** muncul di topbar
3. Klik → konfirmasi → app terinstall ke home screen / desktop

---

## 🛠 Fitur Lengkap

### 🏠 Home
- Profil lengkap Zivana, statistik, countdown ulang tahun

### 📝 Artikel (CRUD + Neon.tech)
- **Create** artikel baru dengan upload gambar
- **Read** artikel dari PostgreSQL Neon.tech
- **Update** artikel yang sudah ada
- **Delete** artikel dari database
- Fallback ke localStorage jika backend offline

### 🎵 Playlist
- Daftar lagu favorit dengan filter genre
- CRUD lagu, link YouTube

### 💬 Contact
- Form kirim pesan dengan validasi
