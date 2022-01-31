CREATE DATABASE join_test_db;
CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES
    ('bob', 'bob@example.com', 1),
    ('joe', 'joe@example.com', 2),
    ('sally', 'sally@example.com', 3),
    ('adam', 'adam@example.com', 3),
    ('jane', 'jane@example.com', null),
    ('mike', 'mike@example.com', null);

INSERT INTO users(name, email, role_id)
VALUES ('jon', 'jon@example.com', null),
       ('tiff', 'tiff@example.com', 1),
       ('tom', 'tom@example.com', 1),
       ('liam', 'liam@example.com', 1);

# JOIN
# WHAT WE WANT
SELECT CONCAT(u.name, ' ', u.email) AS contact_information,
       r.name AS role_information
# FROM WHERE
FROM users AS u
# MAKE CONNECTION BETWEEN PK AND FK
         JOIN roles AS r ON u.role_id = r.id;
# EXPECT 7 results

# LEFT JOIN
# WHAT WE WANT
SELECT CONCAT(u.name, ' ', u.email) AS contact_information,
       r.name AS role_information
# FROM WHERE
FROM users AS u
# MAKE CONNECTION BETWEEN PK AND FK
         LEFT JOIN roles AS r ON u.role_id = r.id;
# EXPECT 10 results
# BRINGS ALL the users not matter if role is null

#RIGHT JOIN roles AS r ON r.role_id =# WHAT WE WANT
SELECT CONCAT(u.name, ' ', u.email) AS contact_information,
       r.name AS role_information
# FROM WHERE
FROM users AS u
# MAKE CONNECTION BETWEEN PK AND FK
         RIGHT JOIN roles AS r ON u.role_id = r.id;
# EXPECT 8 results
# BRINGS ALL THE roles even if the user is null


SELECT COUNT(*), r.name
FROM roles AS r
    JOIN users AS u ON r.id = u.role_id
GROUP BY r.name;