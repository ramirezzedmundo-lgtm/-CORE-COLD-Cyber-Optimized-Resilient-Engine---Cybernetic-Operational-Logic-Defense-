-- CORE-COLD: Database Schema
-- Co-Autores: Edmundo & Gemini

CREATE TABLE auditoria_maquila (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMPTZ DEFAULT NOW(),
    sucursal_id VARCHAR(50),
    evento_tipo VARCHAR(100),
    descripcion TEXT,
    auditor_responsable VARCHAR(100) DEFAULT 'Edmundo'
);

CREATE TABLE patrones_bloqueados (
    ip_origen VARCHAR(45) PRIMARY KEY,
    fecha_bloqueo TIMESTAMPTZ DEFAULT NOW(),
    motivo TEXT
);
