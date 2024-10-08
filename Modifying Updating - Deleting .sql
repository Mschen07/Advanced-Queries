--Dataset: Dynamic Documents
--Source: Khan Academy Challenge Lesson 4 Modifying Databases
--Queried using: SQLite

STEP 1

/ In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows 
where its currently 'Jackie Paper'. 
Then re-select all the rows to make sure the table changed like you expected. /


CREATE table documents
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

UPDATE documents SET author = "Jackie Draper"
WHERE author = "Jackie Paper";

SELECT * FROM documents ;


STEP 2

/Now youll delete a row, being very careful not to delete all the rows. 
Only delete the row where the title is 
'Things Im Afraid Of'. Then re-select all the rows 
to make sure the table changed like you expected./

DELETE FROM documents WHERE title = "Things I'm Afraid Of";
SELECT * FROM documents;