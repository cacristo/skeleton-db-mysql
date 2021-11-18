CREATE DATABASE IF NOT EXISTS docker_db_mysql;
USE docker_db_mysql;

-- MySQL:5.7.28         ---------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS roles CASCADE;
CREATE TABLE roles
(
    code   VARCHAR(10)  NOT NULL,
    name   VARCHAR(255) NOT NULL,
    CONSTRAINT ROLE_PKEY PRIMARY KEY (code)
);

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users
(
    id               BIGINT       NOT NULL,
    first_name       VARCHAR(255) NOT NULL,
    last_name        VARCHAR(255) NOT NULL,
    email            VARCHAR(255) NOT NULL,
    phone            VARCHAR(255) NOT NULL,
    activity         VARCHAR(255) NOT NULL,
    role_code        VARCHAR(10)  NOT NULL,
    version          INT8         NOT NULL,
    creation_date    TIMESTAMP    NULL,
    creation_user    VARCHAR(255) NULL,
    last_update_date TIMESTAMP    NULL,
    last_update_user VARCHAR(255) NULL,
    CONSTRAINT USERS_PKEY PRIMARY KEY (id),
    CONSTRAINT USER_ROLE_ID_FK FOREIGN KEY (role_code) REFERENCES roles (code)
);

-- Data ----------------------------------------------------------------------
------------------------------------------------------------------------------

INSERT INTO roles
(code,  name)
VALUES
('ADM', 'Administrator'),
('DPA', 'Activity reporter'),
('CTA', 'Activity Consultant'),
('CPA', 'Consultant by activity');

INSERT INTO users
(id, first_name , last_name , email                     , phone              , activity            , role_code , version , creation_date , creation_user)
VALUES
(1, 'John'      , 'Doe'     , 'john_doe@gmai.com'       , '0034 77 11 00 22' , 'Administrator'     , 'ADM'     , 1       , CURRENT_DATE  , 'Script'),
(2, 'Jane'      , 'Doe'     , 'jane_doe@gmai.com'       , '0034 77 11 20 20' , 'Activity reporter' , 'DPA'     , 1       , CURRENT_DATE  , 'Script');

-- SET FOREIGN_KEY_CHECKS=1;
COMMIT;
