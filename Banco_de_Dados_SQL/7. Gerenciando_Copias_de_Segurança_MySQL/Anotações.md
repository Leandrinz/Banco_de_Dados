--- Gerenciando Cópias de Segurança MySQL (Famoso Backup) ---

1) Ferramenta Utilizada:
    Extensão: MySQL Database Client (pelo VSCode).

2) Passo a Passo: Backup (Exportar)

    2.1: No menu lateral DATABASE, clique com o botão    direito sobre o Banco de Dados (ex: cadastro).

    2.2: Selecione a opção "Exportar estrutura e dados".

    - Nota: A opção "estrutura" salva apenas o esqueleto; "estrutura e dados" salva tudo.

    2.3: O sistema gerará um arquivo .sql (ex: backup_cadastro_completo.sql) contendo os comandos DROP TABLE, CREATE TABLE e INSERT.

3) Passo a Passo: Restore (Importar)
     3.1: (Opcional) Se o banco foi apagado, crie um novo banco vazio com o mesmo nome.

     3.2: Clique com o botão direito no banco e selecione "Importar SQL".

     3.3: Escolha o arquivo de backup gerado anteriormente.

    - Dica Importante: A interface do VS Code não atualiza sozinha. Após importar, clique no ícone de Refresh (↻) para as tabelas aparecerem na lista.

4) Dicas e Avisos do Sistema:
    |Avisos em Vermelho: Mensagens como [Warning] Using a password on the command line interface can be insecure são apenas alertas de segurança do MySQL e não impedem o sucesso da operação.

    