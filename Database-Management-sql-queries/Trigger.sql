
DELIMITER //

CREATE TRIGGER new 
BEFORE INSERT ON faculty 
FOR EACH ROW 
if new.Grade_point < 3 THEN insert INTO Atention 
VALUES (new.Roll,new.Name,new.Department, new.Balance,new.Grade,new.Grade_point); 
end if;
END//
DELIMITER;

SELECT * FROM faculty;
SELECT * FROM atention;

SHOW TRIGGERS;
DROP TRIGGER trigername;
DROP TRIGGER After_DE_eng;
DROP TRIGGER before_up_eng;
DROP TRIGGER after_DE_on_eng;

SELECT * FROM engineering;

DELIMITER //
CREATE TRIGGER after_DE_on_eng 
AFTER DELETE ON
engineering FOR EACH ROW
BEGIN

INSERT INTO Eng_backup VALUES
   (OLD.Roll, OLD.Name, OLD.Department, OLD.Balance,OLD.Grade);
END//
DELIMITER;