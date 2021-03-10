INSERT INTO pracownik(id, imie, nazwisko, data_zatrudnienia) values(DEFAULT, 'Jan', 'Kowalski', '15-02-2018');
INSERT INTO pracownik(id, imie, nazwisko, data_zatrudnienia) values(DEFAULT, 'Adam', 'Szczepański', '15-02-2018');
INSERT INTO pracownik(id, imie, nazwisko, data_zatrudnienia) values(DEFAULT, 'Dawid', 'Kowal', '15-02-2018');



INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Krystian', 'Pawłowski', '76122569547');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Paweł', 'Kłosek', '86061945647');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Przemek', 'Harman', '89030245647');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Adrian', 'Stefański', '81110245747');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Damian', 'Piotrowski', '67012759547');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Joanna', 'Nowak', '75122559547');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Jagoda', 'Kowalska', '93061188303');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Jacenty', 'Dąbrowski', '78090515777');
INSERT INTO klient(id, imie, nazwisko, pesel) values(DEFAULT, 'Hanna', 'Kamińska', '81080152223');



INSERT INTO sprzedajacy(id, imie, nazwisko, pesel, nr_dowodu) values(DEFAULT, 'Dawid', 'Dąbkowski', '78122178594', 'tfe485938');
INSERT INTO sprzedajacy(id, imie, nazwisko, pesel, nr_dowodu) values(DEFAULT, 'Marceli', 'Górski', '84102912498 ', 'asd284729');
INSERT INTO sprzedajacy(id, imie, nazwisko, pesel, nr_dowodu) values(DEFAULT, 'Damian', 'Stuchły', '73021358375 ', 'plk895352');
INSERT INTO sprzedajacy(id, imie, nazwisko, pesel, nr_dowodu) values(DEFAULT, 'Katarzyna', 'Zawadzka', '51092475348 ', 'ijk384938');
INSERT INTO sprzedajacy(id, imie, nazwisko, pesel, nr_dowodu) values(DEFAULT, 'Henryka', 'Jaworska', '45032426422 ', 'klj398573');



INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'BMW', 'Seria 3', 83456, 32500,  1);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Skoda', 'Superb', 3957849, 42799.99,  5);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Opel', 'Astra H', 4985728, 12100,  2);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Audi', 'A6', 874689, 17650,  3);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Volkswagen', 'Arteon', 238564, 62500,  5);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'BMW', 'Seria 6', 3564, 185500,  4);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Opel', 'Corsa', 228564, 2500,  5);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Fiat', 'Grande Punto', 328564, 12500,  1);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'BMW', 'Seria 5', 28564, 132500,  4);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'BMW', 'Seria 7', 156564, 89500,  3);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Skoda', 'Octavia', 256564, 13500,  3);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Fiat', 'Grande Punto', 116462, 9500,  1);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Volkswagen', 'Golf 6', 276564, 29500,  2);
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'Opel', 'Astra', 256334, 19500,  3);




INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '20-03-2020', '27-06-2020', 41000, 2, 4, 2);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '22-03-2020', '29-06-2020', 41000, 2, 3, 2);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '12-02-2020', '12-07-2020', 58000, 5, 2, 3);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '12-02-2020', '12-07-2020', 58000, 5, 8, 3);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '20-05-2020', '27-06-2020', NULL, 4, 3, 2);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '11-03-2020', '01-06-2020', 12100, 6, 1, 3);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '11-03-2020', '01-06-2020', 11650, 8, 5, 1);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '11-04-2020', '01-05-2020', 31000, 2, 6, 1);
INSERT INTO rezerwacja(id, poczatek_rezerwacji, koniec_rezerwacji, cena_w_rezerwacji, id_samochod, id_klient, id_pracownik) values(DEFAULT, '09-04-2020', '01-05-2020', 31000, 2, 7, 2);


INSERT INTO transakcja(id, cena_ostateczna, data_planowana, data_ostateczna, id_samochod, id_klient, id_pracownik) values(DEFAULT, NULL, '30-06-2020', NULL, 2, 4, 3);
INSERT INTO transakcja(id, cena_ostateczna, data_planowana, data_ostateczna, id_samochod, id_klient, id_pracownik) values(DEFAULT, 62000, '15-05-2020', '15-05-2020', 5, 2, 3);
INSERT INTO transakcja(id, cena_ostateczna, data_planowana, data_ostateczna, id_samochod, id_klient, id_pracownik) values(DEFAULT, 17200, '30-06-2020', NULL, 4, 3, 2);
INSERT INTO transakcja(id, cena_ostateczna, data_planowana, data_ostateczna, id_samochod, id_klient, id_pracownik) values(DEFAULT, NULL, '12-04-2020', '13-05-2020', 10, 1, 1);








