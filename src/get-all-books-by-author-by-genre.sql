SELECT
  books.book_id,
  books.title,
  books.publication_year,
  books.in_stock,
  authors.author_id,
  authors.author_name,
  authors.nationality,
  genres.genre_id,
  genres.genre_name
FROM
  books
JOIN authors ON books.author_id = authors.author_id
JOIN books_genres ON books.book_id = books_genres.book_id
JOIN genres ON books_genres.genre_id = genres.genre_id
WHERE
  authors.author_name = 'Leo Tolstoy'
  AND genres.genre_name IN ('autobiography', 'history');