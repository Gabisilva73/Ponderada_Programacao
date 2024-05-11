
-- Tabela workers
CREATE TABLE workers (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    CPF INTEGER,
    Names INTEGER,
    Emails INTEGER,
    passwords INTEGER,
    lines INTEGER
);

-- Tabela enginners
CREATE TABLE enginners (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    CPF INTEGER,
    names INTEGER,
    emails INTEGER,
    passwords INTEGER
);

-- Tabela manual's tasks
CREATE TABLE `manual's tasks` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_workers INTEGER,
    id_engineers INTEGER,
    id_manuals INTEGER,
    FOREIGN KEY (id_workers) REFERENCES workers(id),
    FOREIGN KEY (id_engineers) REFERENCES enginners(id),
    FOREIGN KEY (id_manuals) REFERENCES manuals(id)
);

-- Tabela manuals
CREATE TABLE manuals (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    names INTEGER,
    category INTEGER,
    descriptions INTEGER,
    id_files INTEGER,
    FOREIGN KEY (id_files) REFERENCES files(id)
);

-- Tabela files
CREATE TABLE files (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    names INTEGER,
    formats INTEGER
);
