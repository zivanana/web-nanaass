-- ================================================================
-- SCHEMA PostgreSQL untuk Neon.tech
-- D'ANS Personal Profile Website
-- ================================================================

-- Tabel users
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Tabel articles (untuk Neon.tech)
CREATE TABLE IF NOT EXISTS articles (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(100) DEFAULT 'Lainnya',
    excerpt TEXT,
    content TEXT NOT NULL,
    image_url VARCHAR(500),
    created_at TIMESTAMP DEFAULT NOW()
);

-- Sample user (password: 123 — hash bcrypt)
-- Ganti hash ini dengan hash asli menggunakan: bcrypt.hashSync('password_kamu', 10)
INSERT INTO users (email, password, name)
VALUES ('zivana@example.com', '$2b$10$GANTI_DENGAN_HASH_BCRYPT_ASLI', 'Zivana Rodian Saputri')
ON CONFLICT (email) DO NOTHING;
