CREATE TABLE customer (
    customer_id INT NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    lastname VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE smartphone (
    smartphone_id INT NOT NULL,
    name VARCHAR(25) NOT NULL,
    brand VARCHAR(25) NOT NULL,
    description VARCHAR(70) NOT NULL,
    price DOUBLE NOT NULL,
    PRIMARY KEY (smartphone_id)
);

CREATE TABLE transaction (
    transaction_id INT NOT NULL,
    customer_id INT NOT NULL,
    smartphone_id INT NOT NULL,
    PRIMARY KEY (transaction_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (smartphone_id) REFERENCES smartphone(smartphone_id)
);
