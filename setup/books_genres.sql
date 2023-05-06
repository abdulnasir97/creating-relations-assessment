CREATE TABLE books_genres (
  book_id INT,
  genre_id INT,
  PRIMARY KEY (book_id, genre_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);