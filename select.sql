--Srednia cena samochodow wedlug marki
SELECT marka, avg(cena_ogloszona) from samochod group by marka;

--Wypisanie klientów, którzy nie dokonali rezerwacji
SELECT * from klient where id NOT IN (SELECT id_klient from rezerwacja);

--Nazwiska klientów, których rezerwacje wygasły
select imie, nazwisko from klient where id in(select id_klient from rezerwacja where koniec_rezerwacji<now() );

--Wypisanie ile każdy z handlarzy wystawił w sumie samochodów
SELECT sprzedajacy.imie, sprzedajacy.nazwisko, count(*) AS wystawione_samochody from samochod inner join sprzedajacy ON samochod.id_sprzedajacy = sprzedajacy.id GROUP BY sprzedajacy.id ORDER by sprzedajacy.nazwisko DESC;

--Wypisanie ile każdy handlarz wystawił samochodów według marki
SELECT sprzedajacy.imie, sprzedajacy.nazwisko, samochod.marka, count(*) AS samochody_danej_marki from samochod inner join sprzedajacy ON samochod.id_sprzedajacy = sprzedajacy.id GROUP BY sprzedajacy.id, samochod.marka ORDER by sprzedajacy.nazwisko DESC;

--Klienci, którzy nie dokonali jeszcze transakcji
CREATE VIEW Klienci_bez_transakcji AS SELECT id, imie, nazwisko from klient where id NOT IN(select id_klient from transakcja);

--Obniżenie cen wszystkich samochodów, które nie zostały jeszcze zarezerwowane
UPDATE samochod SET cena_ogloszona=cena_ogloszona*0.9 where id NOT IN(select id_samochod from rezerwacja);

--Samochody, które nie zostały jeszcze sprzedane(na ktorych nie została dokonana transakcja)
CREATE VIEW nie_sprzedane_samochody AS SELECT samochod.id, marka, model, stan_licznika from samochod inner join transakcja on samochod.id=transakcja.id_samochod where data_ostateczna IS NULL;
--wypisanie ich
select * from nie_sprzedane_samochody ;

--Nazwiska klientów, których rezerwacje wygasły
select imie, nazwisko from klient where id in(select id_klient from rezerwacja where koniec_rezerwacji<now() );

--Usuwanie sprzedanych samochodów
DELETE  FROM samochod where id in(select id_samochod from transakcja where data_ostateczna IS NOT NULL);

--Samochody marki 'BMW', których cena jest wyższa niż średnia cena samochodu w komisie
SELECT * FROM samochod WHERE marka='BMW' and cena_ogloszona>(select avg(cena_ogloszona) from samochod);
