--Criação do novo user para o grupo no SYS.ORCL
--Temos de criar tabelas com as métricas: Tablespaces, Datafiles, Users, Memory, Sessions, CPU

CREATE TABLESPACE aebd_tables_project
    DATAFILE '\u01\app\oracle\oradata\orcl12\orcl\aebd_tables_project.dbf'
    SIZE 100M;
    
CREATE TEMPORARY TABLESPACE aebd_temp_project
    TEMPFILE '\u01\app\oracle\oradata\orcl12\orcl\aebd_temp_project.dbf'
    SIZE 50M
    AUTOEXTEND ON;

CREATE USER aebdProj
    IDENTIFIED BY aebd
    DEFAULT TABLESPACE aebd_tables_project 
    TEMPORARY TABLESPACE aebd_temp_project;
    
GRANT CONNECT TO aebdProj;

GRANT create session, create table, create view, create procedure, create synonym,
      alter any table, alter any procedure,
      drop any table, drop any view, drop any procedure, drop any synonym
      to aebdProj;

ALTER USER aebdProj QUOTA 100M ON AEBD_TABLES_PROJECT;

/*
criar tabelas no utilizadorGrupo
CREATE TABLE Tablespace 
    id
    name
    used MB
    free MB
    total MB
    percentage free
    
CREATE TABLE Datafile
    id 
    tablespaceName
    filename
    size in bytes
    
CREATE TABLE User
    id
    process
    username
    sid
    osuser
    terminal
    machine
    
CREATE TABLE Memory
    id
    username
    session_ID
    mem_used
    
CREATE TABLE Session
    id
    username
    ouser
    sid
    serialN
    sessionPID
    status
    module
    machine
    program
    
CREATE TABLE CPU
    id
    username
    sid
    serialN
    cpuUsage

*/