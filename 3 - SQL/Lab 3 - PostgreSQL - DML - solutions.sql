-- CHALLENGE 1: Who Have Published What At Where?

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", t.title "TITLE", p.pub_name AS "PUBLISHER"
	FROM authors AS a
		INNER JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		INNER JOIN
		titles as t
		ON b.title_id = t.title_id
		INNER JOIN
		publishers as p
		ON t.pub_id = p.pub_id
		ORDER BY a.au_id;
		
-- CHALLENGE 2: Who Have Published How Many At Where?

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", p.pub_name AS "PUBLISHER", count(t.title) AS "TITLE COUNT"
	FROM authors AS a
		INNER JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		INNER JOIN
		titles as t
		ON b.title_id = t.title_id
		INNER JOIN
		publishers as p
		ON t.pub_id = p.pub_id
		GROUP BY a.au_id, a.au_lname, a.au_fname, p.pub_name
		ORDER BY "TITLE COUNT" DESC;
		
-- CHALLENGE 3: Best Selling Authors.

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", sum(s.qty) AS "TOTAL"
	FROM authors AS a
		INNER JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		INNER JOIN
		sales as s
		ON b.title_id = s.title_id
		GROUP BY a.au_id, a.au_lname, a.au_fname
		ORDER BY "TOTAL" DESC LIMIT 3;
		
-- CHALLENGE 4: Best Selling Authors Ranking.

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", COALESCE(sum(s.qty), 0) AS "TOTAL"
	FROM authors AS a
		LEFT JOIN
		titleauthor as b
		ON a.au_id = b.au_id
		LEFT JOIN
		sales as s
		ON b.title_id = s.title_id
		GROUP BY a.au_id, a.au_lname, a.au_fname
		ORDER BY "TOTAL" DESC;