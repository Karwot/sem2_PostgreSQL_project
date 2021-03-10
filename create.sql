CREATE TABLE sprzedajacy (
    id                  SERIAL,
    imie                VARCHAR,
    nazwisko            VARCHAR,
    PESEL               VARCHAR(11),
    Nr_dowodu           VARCHAR(9),

    PRIMARY KEY         (id)
);

CREATE TABLE samochod (
    id                  SERIAL UNIQUE,
    Marka               VARCHAR,
    Model               VARCHAR,
    Stan_licznika       INTEGER,
    Cena_ogloszona      DECIMAL(128, 2),

    id_sprzedajacy      INTEGER NOT NULL,
    PRIMARY KEY         (id),
    FOREIGN KEY         (id_sprzedajacy) REFERENCES sprzedajacy(id)
);

CREATE TABLE  pracownik (
    id                  SERIAL,
    imie                VARCHAR,
    nazwisko            VARCHAR,
    data_zatrudnienia   DATE,

    PRIMARY KEY         (id)
);

CREATE TABLE klient (
    id                  SERIAL,
    imie                VARCHAR,
    nazwisko            VARCHAR,
    PESEL   		VARCHAR(11),
    PRIMARY KEY         (id)
);

CREATE TABLE rezerwacja (
    id                  SERIAL,
    poczatek_rezerwacji  DATE,
    koniec_rezerwacji   DATE,
    cena_w_rezerwacji   DECIMAL(128, 2),

    id_samochod         INTEGER NOT NULL,
    id_klient           INTEGER NOT NULL,
    id_pracownik        INTEGER,

    PRIMARY KEY         (id),
    FOREIGN KEY         (id_samochod) REFERENCES samochod(id) ON DELETE CASCADE,
    FOREIGN KEY         (id_klient) REFERENCES klient(id),
    FOREIGN KEY         (id_pracownik) REFERENCES pracownik(id)
);

CREATE TABLE transakcja (
    id                  SERIAL,
    cena_ostateczna     DECIMAL(128, 2),
    data_planowana      DATE,
    data_ostateczna     DATE,
    id_samochod         INTEGER NOT NULL,
    id_klient           INTEGER,
    id_pracownik        INTEGER,

    PRIMARY KEY         (id),
    FOREIGN KEY         (id_samochod) REFERENCES samochod(id) ON DELETE CASCADE,
    FOREIGN KEY         (id_klient) REFERENCES klient(id),
    FOREIGN KEY         (id_pracownik) REFERENCES pracownik(id)
);