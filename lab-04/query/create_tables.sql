CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE items (
    items_id SERIAL PRIMARY KEY,
    items_name VARCHAR(50) UNIQUE NOT NULL,
    items_volume INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE borrow (
    borrow_id SERIAL NOT NULL,
    item_id SERIAL NOT NULL,
    user_id SERIAL NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (item_id) REFERENCES items(items_id),
    CONSTRAINT fk_item FOREIGN KEY (user_id) REFERENCES users(user_id),
    volume INT NOT NULL
);