SELECT
  CAST(COUNT(books.book_id) AS varchar) AS count
FROM
  books
JOIN authors ON books.author_id = authors.author_id
WHERE
  authors.author_name = 'Leo Tolstoy';