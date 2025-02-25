SELECT 
    c.id AS id_usuario,
    REGEXP_REPLACE(c.name, '[^a-zA-Z0-9áàâãéèêíìîóòôõúùûçÁÀÂÃÉÈÊÍÌÎÓÒÔÕÚÙÛÇ\s]', '', 'g') AS nome_usuario,
    c.phone_number AS telefone,
    m.text AS mensagem,
    m.timestamp AS data_hora,
    CASE 
        WHEN m.is_from_me THEN 'Enviada' 
        ELSE 'Recebida' 
    END AS tipo_mensagem
FROM 
    gustavo_contatos c
JOIN 
    gustavo_mensagens m ON c.id = m.contact_id
WHERE 
    c.block = FALSE
ORDER BY 
    c.name DESC,
    m.timestamp ASC;