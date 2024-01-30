#WHERE is_admin=1;
#INSERT INTO users (first_name, email, password, dept, is_admin, register_date);
#UPDATE users SET dept = 'development' WHERE id = 2;
#ALTER TABLE users ADD age INT;
#UPDATE users SET age = 35 WHERE id > -1;
#ORDER BY register_date DESC;
#SELECT CONCAT(first_name, ' ', last_name) AS 'Name', dept FROM users;
#SELECT DISTINCT email FROM users;
#WHERE age BETWEEN 20 AND 25;
#SELECT * FROM users WHERE dept LIKE 'd%';

/* SELECT
users.first_name,
posts.title,
posts.body,
posts.creation_date
FROM users INNER JOIN posts ON users.id = posts.creator_id ORDER BY posts.title; */

/*
CREATE TABLE comments(
	id INT AUTO_INCREMENT,
    post_id INT,
    creator_id INT,
    body TEXT,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    FOREIGN KEY(creator_id) references users(id),
    FOREIGN KEY(post_id) references posts(id)
); */

/*
SELECT
comments.body,
posts.title,
users.first_name
FROM comments
INNER JOIN posts ON posts.id = comments.post_id
INNER JOIN users ON users.id = comments.creator_id
ORDER BY posts.title; */

#SELECT COUNT()
#SELECT MAX()
#SELECT MIN()
#SELECT SUM() 
#SELECT UCASE
#SELECT LCASE

#SELECT dept FROM users GROUP BY dept;
#SELECT dept, COUNT(dept) FROM users GROUP BY dept;

#find()