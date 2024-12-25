CREATE TABLE Users
(
    id                SERIAL PRIMARY KEY,
    name              VARCHAR(255) NOT NULL,
    email             VARCHAR(255) NOT NULL,
    email_verified_at VARCHAR(255),
    password          VARCHAR(255),
    phone_number      VARCHAR(255)
);

CREATE TABLE Rooms
(
    id           SERIAL PRIMARY KEY,
    home_type    VARCHAR(255) NOT NULL,
    address      VARCHAR(255) NOT NULL,
    has_tv       INT,
    has_internet INT,
    has_kitchen  INT,
    has_air_con  INT,
    price        INT,
    owner_id     INT REFERENCES Users (id),
    latitude     FLOAT,
    longitude    FLOAT
);

CREATE TABLE Reservations
(
    id         SERIAL PRIMARY KEY,
    user_id    INT REFERENCES Users (id),
    room_id    INT REFERENCES Rooms (id),
    start_date TIMESTAMP,
    price      INT,
    total      INT
);

CREATE TABLE Reviews
(
    id             SERIAL PRIMARY KEY,
    reservation_id INT REFERENCES Reservations (id),
    rating         INT
);