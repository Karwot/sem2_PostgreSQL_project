-- trigger, ktory archiwizuje usuniete samochody z bazy. Np. w przypadku gdy zostały sprzedane

CREATE FUNCTION log_samochody() RETURNS trigger AS $_$
BEGIN
	CREATE TABLE IF NOT EXISTS usuniete(id int, marka varchar, model varchar, cena decimal);
	INSERT INTO usuniete(id, marka, model, cena) values(OLD.id, OLD.marka, OLD.model, OLD.cena_ogloszona);
	RETURN NULL;
END
$_$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_sprzedane 
AFTER DELETE ON samochod
FOR EACH ROW
EXECUTE PROCEDURE log_samochody();


CREATE FUNCTION walidacja_ceny() RETURNS trigger AS $b$
BEGIN
	IF NEW.cena_ogloszona>0 THEN
		RETURN NEW;
	ELSE
		RAISE EXCEPTION 'Cena nie moze byc mniejsza od 0!';
	END IF;
END
$b$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_walidacja_ceny
BEFORE INSERT OR UPDATE on samochod
FOR EACH ROW
EXECUTE PROCEDURE walidacja_ceny();