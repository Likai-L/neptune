INSERT INTO tasks(
    user_id,
    category,
    description,
    due_date,
    complete
  )
VALUES (
    1,
    'restaurants',
    'Eat at Shimizu',
    '2023-01-06',
    TRUE
  ),
  (
    1,
    'films',
    'Watch Arrival',
    '2023-01-06',
    TRUE
  ),
  (
    1,
    'books',
    'Read The Catcher in the Rye',
    '2023-01-06',
    FALSE
  ),
  (
    1,
    'products',
    'Buy cat food',
    '2023-01-06',
    FALSE
  );

INSERT INTO restaurants(
    task_id,
    title,
    cover_photo_url,
    more_info_url,
    rating,
    phone_number,
    address,
    cuisine_type,
    is_closed
  )
VALUES (
    1,
    'Shimizu',
    'https://placekitten.com/200/300',
    'https://www.yelp.ca/biz/shimizu-kitchen-calgary',
    '4.5',
    '+1 403-455-3380',
    ARRAY [
      '1918 37 Street SW',
      'Calgary, AB T3E 3A3',
      'Canada'
    ],
    'Ramen',
    FALSE
  );

INSERT INTO films(
    task_id,
    Title,
    Year,
    Poster,
    IMDB_rating,
    RT_rating,
    MS_rating,
    Plot,
    Genre,
    Director,
    Actors
  )
VALUES(
    2,
    'Arrival',
    '2016',
    'https://m.media-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_SX300.jpg',
    '7.9/10',
    '95%',
    '81/100',
    'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.',
    'Drama, Mystery, Sci-Fi',
    'Denis Villeneuve',
    'Amy Adams, Jeremy Renner, Forest Whitaker'
  )
RETURNING *;

INSERT INTO books(
    task_id,
    title,
    author,
    release_date,
    cover_photo_url,
    more_info_url,
    summary,
    genres
  )
VALUES (
    3,
    'The Catcher in the Rye',
    'Jerome David Salinger',
    '1951-07-16',
    'https://placekitten.com/200/300',
    'https://books.google.ca/books/about/The_Catcher_in_the_Rye.html?id=j--EMdEfmbkC&',
    'description',
    ARRAY [
      'Fiction',
      'Classics'
    ]
  );

INSERT INTO products(
    task_id,
    title,
    cover_photo_url,
    more_info_url,
    rating,
    price
  )
VALUES (
    4,
    'Purina ® Friskies ® Ocean Delights Cat Food Variety Pack 24 - 156g Cans',
    'https://placekitten.com/200/300',
    'https://www.amazon.ca/dp/B079NHK95Y',
    '4.6',
    '$18.97'
  );
