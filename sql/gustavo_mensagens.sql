---
DROP TABLE gustavo_mensagens;
CREATE TABLE gustavo_mensagens (
    id UUID PRIMARY KEY,
    is_from_me BOOLEAN NOT NULL DEFAULT FALSE,
    sent BOOLEAN NOT NULL DEFAULT FALSE,
    type VARCHAR(50) NOT NULL DEFAULT 'chat',
    timestamp TIMESTAMP WITH TIME ZONE,
    text TEXT,
    contact_id UUID,
    from_id UUID,
    service_id UUID,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    quoted_message_id UUID,
    files JSONB,
    is_from_bot BOOLEAN NOT NULL DEFAULT FALSE,
    is_comment BOOLEAN NOT NULL DEFAULT FALSE
);

-- Índices básicos para melhorar performance
CREATE INDEX idx_gustavo_mensagens_contact_id ON gustavo_mensagens(contact_id);
CREATE INDEX idx_gustavo_mensagens_from_id ON gustavo_mensagens(from_id);


-- TEste
SELECT * FROM gustavo_mensagens LIMIT 10


