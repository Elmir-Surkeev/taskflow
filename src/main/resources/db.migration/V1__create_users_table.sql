--Create table users
--  Stores all registered user accounts

 create table users(
     id  bigserial primary key ,
     email         VARCHAR(100) NOT NULL UNIQUE,
     name          VARCHAR(100) NOT NULL,
     password_hash VARCHAR(255),
     role          VARCHAR(20)  NOT NULL DEFAULT 'MEMBER',
     created_at    TIMESTAMP    NOT NULL DEFAULT NOW(),
     updated_at    TIMESTAMP    NOT NULL DEFAULT NOW()
 );

-- Index for fast lookup by email (used on every login)
CREATE INDEX idx_users_email ON users(email);