--Deleta tabela
--DROP TABLE gustavo_contatos;

CREATE TABLE gustavo_contatos (
    id UUID PRIMARY KEY,
    note TEXT,
    last_message_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL,
    block BOOLEAN DEFAULT FALSE,
    id_from_service VARCHAR(255) ,
    name VARCHAR(255),
    internal_name VARCHAR(255),
    alternative_name VARCHAR(255),
    phone_number VARCHAR(50) 
    
);

-- Adicionar comentários descritivos na tabela
COMMENT ON TABLE gustavo_contatos IS 'Armazena informações de contatos do sistema de mensagens';
COMMENT ON COLUMN gustavo_contatos.id IS 'Identificador único do contato';
COMMENT ON COLUMN gustavo_contatos.note IS 'Observações sobre o contato (MUITO IMPORTANTE)';
COMMENT ON COLUMN gustavo_contatos.last_message_at IS 'Data/hora da última mensagem enviada ou recebida';
COMMENT ON COLUMN gustavo_contatos.created_at IS 'Data/hora de criação do contato no sistema';
COMMENT ON COLUMN gustavo_contatos.block IS 'Indica se o contato está bloqueado (true) ou não (false)';
COMMENT ON COLUMN gustavo_contatos.id_from_service IS 'Identificador do serviço (número+@c.us para contatos, @g.us para grupos)';
COMMENT ON COLUMN gustavo_contatos.name IS 'Nome que a pessoa usa no próprio WhatsApp';
COMMENT ON COLUMN gustavo_contatos.internal_name IS 'Nome salvo no Digisac (se existir)';
COMMENT ON COLUMN gustavo_contatos.alternative_name IS 'Nome salvo no celular (ex: Google Contatos)';
COMMENT ON COLUMN gustavo_contatos.phone_number IS 'Número de telefone do contato (extraído de data.number)';

-- Criar índice para buscas por nome
CREATE INDEX idx_contatos_name ON gustavo_contatos(name);
CREATE INDEX idx_contatos_internal_name ON gustavo_contatos(internal_name);
CREATE INDEX idx_contatos_alternative_name ON gustavo_contatos(alternative_name);

-- Teste
SELECT * FROM gustavo_contatos


