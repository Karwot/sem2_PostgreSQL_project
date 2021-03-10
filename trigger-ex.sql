-- przyklad działania procedur wyzwalanych:
-- przyklad1: procedura archiwizująca dane usuwanych samochodów

-- usuwamy rekord z tabeli samochod
DELETE FROM samochod where id=2;
-- w tym momencie jesli nie istnieje tworzona jest tabela usuniete do ktorej przekazywane są dane o id, modelu i marce usunietego samochodu.
-- Za pomocą ponizszej komendy upewniamy się czy tabela została utworzona i zostały wpisane do niej dane.
select * from usuniete;


-- przyklad 2: procedura sprawdząjca poprawność wpisywanej ceny
-- próba wprowadzenia do tabeli samochód rekordu, w którym cena jest ujemna
INSERT INTO samochod(id, marka, model, stan_licznika, cena_ogloszona, id_sprzedajacy) values(DEFAULT, 'BMW', 'Seria 3', 83456, -32500,  1);
-- Zwracany jest błąd oraz dane nie zostają wprowadzone, o czym można się upewnić zapytaniem poniżej. Komunikat błędu: "ERROR:  Cena nie moze byc mniejsza od 0!"
-- Upewaniamy się, że dane nie zostały wprowadzone:
select * from samochod where cena_ogloszona <0;
-- zapytanie zwraca 0 wierszy

-- przuyklad 3:
-- walidacja ceny przy aktualizacji danych w encji samochod
UPDATE samochod SET cena_ogloszona = -1000 where id=3;
-- zapytanie zwraca błąd:
--ERROR:  Cena nie moze byc mniejsza od 0!
-- Upewaniamy się, że dane nie zostały wprowadzone:
select * from samochod where cena_ogloszona <0;
-- zapytanie zwraca 0 wierszy