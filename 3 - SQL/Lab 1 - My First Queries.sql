-- 1. What are the different genres?

SELECT * FROM data;

SELECT DISTINCT prime_genre FROM data;

-- ANSWER: Shopping, Games, Education, Reference, Business, Social Networking, Food & Drink, Sports, Catalogs, Weather, 
-- Book, Music, Entertainment, Medical, Utilities, Travel, Navigation, Photo & Video, Finance, Health & Fitness, News
-- Productivity, Lifestyle.

-- 2. Which is the genre with the most apps rated?

SELECT * FROM data;

SELECT rating_count_tot, prime_genre FROM data ORDER BY rating_count_tot DESC;

-- ANSWER: Social Networking - 2974676.

-- 3. Which is the genre with most apps?

SELECT * FROM data;

SELECT prime_genre, COUNT(*) FROM data GROUP BY prime_genre ORDER BY count DESC;

-- ANSWER: Games - 3862.

-- 4. Which is the one with least?

SELECT prime_genre, COUNT(*) FROM data GROUP BY prime_genre ORDER BY count;

-- ANSWER: Catalogs - 10.

-- 5. Find the top 10 apps most rated.

SELECT rating_count_tot, track_name FROM data ORDER BY rating_count_tot DESC LIMIT 10;

-- ANSWER: Facebook, Instagram, Clash of Clans, Temple Run, Pandora - Music & Radio, Pinterest, Bible
-- Candy Crush Saga, Spotify Music, Angry Birds.

-- 6. Find the top 10 apps best rated by users.

SELECT * FROM data;

SELECT user_rating, track_name FROM data ORDER BY user_rating DESC LIMIT 10;

-- ANSWER: Plants vs. Zombies HD, Flashlight Òã, TurboScanã¢ Pro - document & receipt scanner: scan multiple pages and photos to PDF, 
-- Learn to Speak Spanish Fast With MosaLingua, The Photographer's Ephemeris, ÐÈSudoku +, :) Sudoku +, King of Dragon Pass
-- Plants vs. Zombies, Infinity Blade.

-- 7. Take a look at the data you retrieved in question 5. Give some insights.

-- ANSWER: The apps most rated are Social Media, Music Apps and Games.

-- 8. Take a look at the data you retrieved in question 6. Give some insights.

-- ANSWER: The apps with the best average user rating value are Games.

-- 9. Now compare the data from questions 5 and 6. What do you see?

-- ANSWER: There is no APP that appears in both column "user_rating" and "rating_count_tot", so it seems that the counts
-- of rated not come together with the best average value of rating. So an App could has a big number of rate, but a medium
-- or low rating. 

-- 10. How could you take the top 3 regarding both user ratings and number of votes?

SELECT * FROM data;

SELECT * FROM data ORDER BY (user_rating, rating_count_tot) DESC LIMIT 3;

-- ANSWER: Top 3 App: Head Soccer, Plants vs. Zombies, Sniper 3D Assassin: Shoot to Kill Gun Game.

-- 11. Do people care about the price of an app?

SELECT * FROM data;

SELECT price as a, user_rating as b, COUNT (*) FROM data GROUP BY price, user_rating ORDER BY count DESC;

-- ANSWER: When we are looking for the 3 columns (price, user_rating and count), we could see that 
-- it has a relation to the number of Apps and the price, it has more Apps free and less Apps with an expensive
-- price. So, we could think than it has more demand for free apps. In other hand, the user rating does not seems to have 
-- a correlation to the price.

-- Bonus 1: Find the total number of games available in more than 1 language.

SELECT * FROM data;

SELECT COUNT(*) FROM data WHERE "lang.num" > 1;

-- ANSWER: Total number of games available: 3389

-- Bonus2: Find the number of free vs paid apps.

SELECT * FROM data;

SELECT COUNT(*) FROM data WHERE "price" = 0;

SELECT COUNT(*) FROM data WHERE "price" > 0;

-- ANSWER: Free Apps: 4056 / Paid Apps: 3141

-- Bonus3: Find the number of free vs paid apps for each genre.

SELECT * FROM data;

SELECT prime_genre, COUNT (*) FROM data WHERE "price" > 0 GROUP BY prime_genre;

SELECT prime_genre, COUNT (*) FROM data WHERE "price" = 0 GROUP BY prime_genre;

-- ANSWER:
-- Paid Apps:
-- "Shopping"	1
-- "Games"	1605
-- "Education"	321
-- "Reference"	44
-- "Social Networking"	24
-- "Business"	37
-- "Sports"	35
-- "Food & Drink"	20
-- "Catalogs"	1
-- "Weather"	41
-- "Book"	46
-- "Music"	71
-- "Entertainment"	201
-- "Medical"	15
-- "Utilities"	139
-- "Travel"	25
-- "Navigation"	26
-- "Finance"	20
-- "Photo & Video"	182
-- "Health & Fitness"	104
-- "News"	17
-- "Productivity"	116
-- "Lifestyle"	50

-- Free Apps:
-- "Shopping"	121
-- "Games"	2257
-- "Education"	132
-- "Reference"	20
-- "Business"	20
-- "Social Networking"	143
-- "Food & Drink"	43
-- "Sports"	79
-- "Catalogs"	9
-- "Weather"	31
-- "Book"	66
-- "Music"	67
-- "Entertainment"	334
-- "Medical"	8
-- "Utilities"	109
-- "Travel"	56
-- "Navigation"	20
-- "Photo & Video"	167
-- "Finance"	84
-- "Health & Fitness"	76
-- "News"	58
-- "Productivity"	62
-- "Lifestyle"	94
