CREATE TABLE vending_machine (
    id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    location_x DECIMAL(9,6) NOT NULL,
    location_y DECIMAL(9,6) NOT NULL,
    pay VARCHAR(10) NOT NULL CHECK (pay IN ('cash', 'cashress'))
);

CREATE TABLE drinks (
    did INT AUTO_INCREMENT PRIMARY KEY,
    vid INT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    FOREIGN KEY (vid) REFERENCES vending_machine(id),
    temp VARCHAR(5) NOT NULL CHECK (temp IN ('hot', 'cold')),
    category VARCHAR(20) NOT NULL CHECK (category IN ('soda', 'sports', 'can', 'tea', 'coffee', 'water', 'juice', 'energy')),
    url VARCHAR(255)
);

INSERT INTO vending_machine (address, location_x, location_y, pay)
VALUES 
('東京都中央区1-1-1', 35.6895, 139.6917, 'cash'),
('大阪市北区1-1-1', 34.6869, 135.5200, 'cashress'),
('東京都目黒区上目黒3-36-22', 35.643632, 139.692198, 'cashress'),
('東京都目黒区上目黒3-36-24', 35.643720, 139.692427, 'cash'),
('東京都渋谷区渋谷2-16-1', 35.659781, 139.705413, 'cashress'),
('東京都渋谷区渋谷1-8', 35.660184, 139.705661, 'cashress'),
('東京都渋谷区渋谷1-9', 35.659948, 139.704684, 'cashress'),
('東京都渋谷区渋谷1-9', 35.660605, 139.704646, 'cash'),
('東京都渋谷区渋谷1-10-15', 35.659139, 139.705252, 'cash'),
('東京都渋谷区渋谷1-12-13', 35.660614, 139.703841, 'cashress'),
('東京都渋谷区渋谷1-18-20', 35.661250, 139.704388, 'cashress'),
('東京都渋谷区渋谷2-10-10', 35.659908, 139.706347, 'cashress'),
('東京都渋谷区渋谷2-13', 35.658598, 139.706171, 'cashress'),
('東京都渋谷区渋谷2-18', 35.659404, 139.704542, 'cashress');

INSERT INTO drinks (vid, product_name, price, temp, category, url)
VALUES 
(1, 'ミルクティー', 140.00, 'hot', 'tea', 'https://www.suntory.co.jp/products/pimg/FBMRJ_R1_20221221.jpg?_x=254&_y=659'),
(1, 'コーラ', 180.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(1, 'お茶', 110.00, 'hot', 'tea', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/ayataka/thumbnail/2022/0404/2-ayataka-thum_09.png'),
(2, 'コーヒー', 140.00, 'hot', 'coffee', 'https://www.suntory.co.jp/products/pimg/FBCNC_R1_20230124.jpg'),
(2, 'コーラ', 180.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(2, 'スプライト', 120.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/sprite/thumbnail/0424/2-sprite-thum_01.png'),
(3, 'ウォーター', 80.00, 'cold', 'water', 'https://d2en6k6px5a3jz.cloudfront.net/magazine/wp-content/uploads/20220829115741/13616ae6fc462bc4fa014efeebbb93fe-1.jpeg'),
(3, 'コーラ', 120.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(3, 'グリーンティー', 130.00, 'hot', 'tea', 'https://www.family.co.jp/content/dam/family/goods/4210658.jpg'),
(3, 'ミルクティー', 140.00, 'hot', 'tea', 'https://www.suntory.co.jp/products/pimg/FBMRJ_R1_20221221.jpg?_x=254&_y=659'),
(4, 'コーヒー', 150.00, 'hot', 'coffee', 'https://www.suntory.co.jp/products/pimg/FBCNC_R1_20230124.jpg'),
(4, 'コーラ', 150.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(4, 'オレンジジュース', 140.00, 'cold', 'juice', 'https://saiko-bbq.jp/html/upload/save_image/0110164635_5e182bdba6ff2.jpg'),
(4, 'ラテ', 180.00, 'hot', 'coffee','https://www.suntory.co.jp/products/pimg/FBCCT_R1_20230606.jpg'),
(5, 'レモンティー', 125.00, 'cold', 'tea', 'https://www.suntory.co.jp/products/pimg/FBNSS_R1_20230124.jpg'),
(5, 'コーラ', 120.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(5, 'アイスコーヒー', 160.00, 'cold', 'coffee', 'https://www.cheerio.co.jp/official/wp-content/uploads/2022/04/c627e7c4ed52b7b27c5205a7b20bde60.png'),
(6, 'ジンジャーエール', 130.00, 'cold', 'soda', 'https://storage.topvalu.net/assets/contents/images/product/246590/4549414445954_PC_1.jpg'),
(6, 'コーラ', 120.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(6, 'ミルクティー', 140.00, 'hot', 'tea', 'https://www.suntory.co.jp/products/pimg/FBMRJ_R1_20221221.jpg?_x=254&_y=659'),
(7, 'アイスティー', 115.00, 'cold', 'tea', 'https://www.kirin.co.jp/products/list/images/336508b.jpg'),
(7, 'コーヒー', 150.00, 'hot', 'coffee', 'https://www.suntory.co.jp/products/pimg/FBCNC_R1_20230124.jpg'),
(7, 'レモンティー', 125.00, 'cold', 'tea', 'https://www.suntory.co.jp/products/pimg/FBNSS_R1_20230124.jpg'),
(7, 'コーラ', 120.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(7, 'エナジードリンク', 200.00, 'cold', 'energy', 'https://m.media-amazon.com/images/I/71AGNrVcLPL.__AC_SX300_SY300_QL70_ML2_.jpg'),
(8, 'コーラ', 120.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(8, 'カプチーノ', 170.00, 'hot', 'coffee', 'https://shareview.jp/img/item/l/35/35062l.jpg'),
(8, 'ミルクティー', 140.00, 'hot', 'tea', 'https://www.suntory.co.jp/products/pimg/FBMRJ_R1_20221221.jpg?_x=254&_y=659'),
(9, 'ペプシ', 120.00, 'cold', 'soda', 'https://www.suntory.co.jp/products/pimg/PPC5H_R1_20200330.jpg'),
(9, 'コーラ', 160.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png'),
(9, 'レモンティー', 125.00, 'cold', 'tea', 'https://www.suntory.co.jp/products/pimg/FBNSS_R1_20230124.jpg'),
(9, 'ミネラルウォーター', 90.00, 'cold', 'water', 'https://www.otsukafoods.co.jp/product/crystalgeyser/img/500_l.jpg'),
(10, 'レッドブル', 210.00, 'cold', 'energy', 'https://images.ctfassets.net/lcr8qbvxj7mh/BtZl9UCzFjYpCqqGvAWAX/6ac5634fef757437d26938fa333074bf/JP_PURPLE-250ml_ambient_001_PCS.png'),
(10, 'マウンテンデュー', 125.00, 'cold', 'soda', 'https://www.suntory.co.jp/products/pimg/PMDAF_R1_20181220.jpg'),
(10, 'コーヒー', 150.00, 'hot', 'coffee', 'https://www.suntory.co.jp/products/pimg/FBCNC_R1_20230124.jpg'),
(10, 'コーラ', 150.00, 'cold', 'soda', 'https://www.cocacola.co.jp/content/dam/journey/jp/ja/brands/coca-cola/jp-ja-2-cocacola-cocacola.png');
