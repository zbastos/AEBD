--Criação do novo user para o grupo no SYS.ORCL

CREATE TABLESPACE aebd_tables_project
    DATAFILE '\u01\app\oracle\oradata\orcl12\orcl\aebd_tables_project.dbf'
    SIZE 100M;
    
CREATE TEMPORARY TABLESPACE aebd_temp_project
    TEMPFILE '\u01\app\oracle\oradata\orcl12\orcl\aebd_temp_project.dbf'
    SIZE 50M
    AUTOEXTEND ON;

CREATE USER utilizadorGrupo
    IDENTIFIED BY passGrupo
    DEFAULT TABLESPACE aebd_tables_project 
    TEMPORARY TABLESPACE aebd_temp_project;
    
GRANT CONNECT TO utilizadorGrupo;