-- Date ranges for reports; primary key already covers order_id joins.
CREATE INDEX idx_orders_date_created ON orders (date_created);
-- Product-based aggregation; the composite primary key starts with order_id.
CREATE INDEX idx_order_product_product_id ON order_product (product_id);
