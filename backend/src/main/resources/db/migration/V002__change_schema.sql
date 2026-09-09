-- Normalize the many-to-many order/product relationship: quantity belongs
-- to an order line, while product attributes remain in product.
CREATE TABLE order_product (
    order_id BIGINT NOT NULL REFERENCES orders(id),
    product_id BIGINT NOT NULL REFERENCES product(id),
    quantity INTEGER NOT NULL,
    PRIMARY KEY (order_id, product_id)
);
