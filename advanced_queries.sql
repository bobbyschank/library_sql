-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM authors JOIN books ON (authors.id = books.author_id) WHERE authors.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT books FROM authors JOIN books ON (authors.id = books.author_id) WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
SELECT COUNT(books) FROM authors JOIN books

-- Find out how many books written before 1980 were by authors not from the US.
SELECT COUNT(books) FROM authors JOIN books ON (authors.id = books.author_id) WHERE authors.name = 'Albert Camus';

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * FROM authors where name LIKE 'J%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books where title LIKE '%the%';