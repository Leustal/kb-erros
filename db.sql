-- Script de criação da estrutura da Base de Conhecimento
-- Compatível com PostgreSQL

CREATE TABLE IF NOT EXISTS registros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) DEFAULT 'Geral',
    tags VARCHAR(255),
    descricao TEXT,
    solucao TEXT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Índices para otimizar buscas por texto e tags
CREATE INDEX IF NOT EXISTS idx_registros_titulo ON registros(titulo);
CREATE INDEX IF NOT EXISTS idx_registros_categoria ON registros(categoria);
CREATE INDEX IF NOT EXISTS idx_registros_tags ON registros(tags);