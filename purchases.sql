CREATE TABLE purchases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL, -- Salinan email dari saat pembelian
    address TEXT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    purchased_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES account(id) ON DELETE CASCADE,  -- Menghubungkan ke tabel users
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE  -- Menghubungkan ke tabel products
);
