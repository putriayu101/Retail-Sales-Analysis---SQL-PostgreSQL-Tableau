
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
(
	transactions_id INT PR,
	sale_date DATE,
	sale_time TIME,
	customer_id INT,
	gender VARCHAR(15),
	age INT,
	category VARCHAR(15),
	quantiy INT,
	price_per_unit FLOAT,
	cogs FLOAT,
	total_sale FLOAT
)

SELECT * FROM retail_sales;


-- Data cleaning 

SELECT COUNT(*) FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

SELECT * FROM retail_sales
WHERE 
    sale_date IS NULL 
	OR 
	sale_time IS NULL 
	OR 
	customer_id IS NULL 
	OR 
    gender IS NULL 
	OR 
	age IS NULL 
	OR 
	category IS NULL 
	OR 
    quantiy IS NULL 
	OR 
	price_per_unit IS NULL 
	OR 
	cogs IS NULL;

DELETE FROM retail_sales
WHERE 
    sale_date IS NULL 
	OR 
	sale_time IS NULL 
	OR 
	customer_id IS NULL 
	OR 
    gender IS NULL 
	OR 
	age IS NULL 
	OR 
	category IS NULL 
	OR 
    quantiy IS NULL 
	OR 
	price_per_unit IS NULL 
	OR 
	cogs IS NULL;

SELECT * FROM retail_sales;


-- Data exploration

-- 1. write SQL query to retrieve all columns for sales made on '2023-11-05' in 09.00 - 20.00
SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05' AND sale_time BETWEEN '09:00:00' AND '20:00:00';


-- 2. write a SQL query to retrive all transaction where the category is 'clothing'
-- dan bandingkan antar bulan untuk melihat kapan 'clothing' memiliki penjualan paling tinggi.
SELECT TO_CHAR(DATE_TRUNC('month', sale_date), 'YYYY-MM') AS bulan,
	SUM(quantiy) AS total_quantity
FROM retail_sales
WHERE category = 'Clothing' 
GROUP BY bulan
ORDER BY total_quantity DESC;

-- NOTE SOAL.2: 
-- DATE_TRUNC('month', sale_date) = untuk memotong tanggal jadi bulan dan tahun
-- TO_CHAR((), 'YYYY-MM') = untuk membuat tampilan nama bulan & tahun mudah di baca


-- 3. calculate total_sales untuk setiap kategori + tambahkan kolom presentase total untuk
-- mengetahui kontribusi setiap kategori terhadap total sales
SELECT category, SUM(total_sale) AS total_sales,
	ROUND((SUM(total_sale)*100.0 / SUM(SUM(total_Sale)) OVER())::numeric,2) AS percentage_of_total
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;

-- NOTE SOAL.3:
-- ROUND((SUM(total_sale)*100.0 / SUM(SUM(total_Sale)) OVER())::numeric,2) = 
-- SUM(total_sales) = untuk menjumlahkan total penjualan untuk setiap kategori
-- SUM(SUM(total_Sale)) OVER() = menghitung total dari semua kategori. digunakan u/ membandingkan setiap kategori
-- (SUM(total_sale)*100.0 / SUM(SUM(total_Sale)) OVER() = menghitung brp persen kontribusi setiap kategori ke total keseluruhan penjualan
-- :: numeric = mengubah hsil dalam bentuk angka yg dibulatkan
-- ROUND(....,2) = membulatkan hasil menjadi 2 angka belakang koma


-- 4. temukan average age dari kustomer yang mempurcase items dari beauty kategori.
-- dan tampilkan rata-rata usia untuk semua kategori

-- rata-rata usia pelanggan di kategori beauty
SELECT category, 
	ROUND(AVG(age),2) AS avg_age
FROM retail_Sales
WHERE category = 'Beauty'
GROUP BY 1;

-- rata-rata usia pelanggan di semua kategori
SELECT category, 
	ROUND(AVG(age),2) AS avg_age
FROM retail_Sales
GROUP BY 1
ORDER BY avg_age DESC;


-- 5. temukan semua transaksi dimana total_sale lebih besar dari 1800 dan diantara 1800 & 1500
--  dan cari juga rata2 total_sale untuk transaksi diatas 1800 dan dibawah 1800

-- transaksi total_Sale > 1800 dan di antara 1500 - 1800
SELECT * ,
	CASE 
		WHEN total_sale > 1800 THEN 'Di atas 1800'
		WHEN total_sale BETWEEN 1500 AND 1800 THEN 'Diantara 1500-1800'
		ELSE 'Di bawah 1500'
	END AS Kategori_penjualan
FROM retail_sales
WHERE total_sale >= 1500
ORDER BY total_sale DESC;

-- rata-rata total_sale untuk transaksi diatas 1800 dan di bawah 1800
SELECT 
	ROUND(AVG(CASE 
			WHEN total_sale > 1800 THEN total_sale END)::numeric, 2) AS rata_diatas_1800,
	ROUND(AVG(CASE
			WHEN total_sale < 1800 THEN total_sale END)::numeric, 2) AS rata_dibawah_1800
FROM retail_sales;

-- rata-rata total_Sale u/ transaksi diatas 1800
SELECT * FROM retail_sales
WHERE total_sale > 1800

-- kategori yang punya total_Sale tinggi
SELECT category, COUNT(*) AS jumlah_transaksi,
	AVG(total_sale) AS ratarata_sale
FROM retail_sales
WHERE total_sale > 1800
GROUP BY category
ORDER BY 2 DESC;

-- NOTE SOAL5:
-- PostgreSQL tidak bisa langsung membulatkan nilai tipe "double precision" (hasil AVG) ke jumlah desimal tertentu use fungsi ROUND()
-- ::numeric = digunakan data jadi tipe numerik. AVG menghasilkan double precission
-- dan di PostgresSQL tidak menghasilkan hal tsb dalam ROUND(double precission, integer)
-- sehingga diberi (::numeric) agar dapat dibulatkan oleh ROUND


-- 6. temukan total number dari setiap transaksi (COUNT(transaction_id)
-- dari setiap gender di setiap kategori. dan tambahkan kolom avg_sale_pertransactions 
-- untuk melihat pola pembelian pria vs wanita

-- total number dari setiap gender di setiap kategori + kolom avg_sale_pertransactions
SELECT category, gender, 
	COUNT(transactionS_id) AS total_transaction,
	ROUND(AVG(total_sale)::numeric, 2) AS avg_sale_pertransactions
FROM retail_sales
GROUP BY 1,2
ORDER BY 1,2;


-- DEFAULT
SELECT * FROM retail_sales;


-- 7. hitung avg total sale untuk setiap untuk setiap bulan dan temukan best selling
-- bulan di setiap tahun. dan buat ranking (RANK()) untuk analisis tren tiap tahun

-- avg total sale untuk setiap bulan 
SELECT EXTRACT (YEAR FROM sale_date) AS tahun,
	TO_CHAR(sale_date, 'month') AS bulan,
	ROUND(AVG(total_sale)::numeric, 2) AS avg_sale
FROM retail_sales
GROUP BY 1,2
ORDER BY 1,3 DESC;

-- dan find best selling bulan di setiap tahun
-- SELECT 
--     tahun, bulan, avg_sale
-- FROM (
--     SELECT 
--         EXTRACT(YEAR FROM sale_date) AS tahun,
--         TO_CHAR(sale_date, 'Month') AS bulan,
--         ROUND(AVG(total_sale)::numeric, 2) AS avg_sale,
--         RANK() OVER (PARTITION BY EXTRACT(YEAR FROM sale_date)
--                      ORDER BY AVG(total_sale) DESC) AS ranking
--     FROM retail_sales
--     GROUP BY tahun, bulan
-- ) ranked
-- WHERE ranking = 1;

SELECT 
    tahun,
    TO_CHAR(TO_DATE(bulan::text, 'MM'), 'FMMonth') AS nama_bulan,
    avg_sale
FROM (
    SELECT 
        EXTRACT(YEAR FROM sale_date) AS tahun,
        EXTRACT(MONTH FROM sale_date) AS bulan,
        ROUND(AVG(total_sale)::numeric, 2) AS avg_sale,
        RANK() OVER (
            PARTITION BY EXTRACT(YEAR FROM sale_date)
            ORDER BY AVG(total_sale) DESC
        ) AS ranking
    FROM retail_sales
    GROUP BY tahun, bulan
) ranked
WHERE ranking = 1;

-- NOTE SOAL 7:
-- EXTRACT (YEAR FROM sale_date) = mengambil bagian 'tahun' dari kolom sale_date (misal 2023 dari 2023-10-10)
-- TO_CHAR (sale_date, 'month') = mengubah tanggal bulan menjadi nama bulan (misal 'juli' dari 2023-07-10)
-- (...) ranked = subquery, yaitu hasil sementara dari perhitungan rata-rata penjualan tiap bulan
-- RANK()OVER() = fungsi 'window' yang memberi peringkat 1,2,3,dst ke setiap baris
-- PARTITION BY EXTRACT (YEAR FROM sale_date) = membagi data berdasarkan tahun, jadi ranking dihitung ulang untuk setiap tahun
-- WHERE ranking = 1 = mengambil hanya bulan terbaik tiap tahun


-- 8. temukan top 5 kustomer berdasarkan total sales tertinggi
SELECT customer_id, 
	SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;


-- 9. temukan number of unique customer yang mempurchase item dari setiap kategori.
-- dan cari matriks "rata-rata quantity per kustomer" untuk engagement tiap kategori

-- unique customer 
SELECT category, COUNT (DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC;

-- rata-rata quantity per kustomer
SELECT category, 
	ROUND(SUM(quantiy) ::numeric / COUNT(customer_id), 2) AS avg_quantity_percustomer
FROM retail_sales
GROUP BY 1
ORDER BY 1 DESC;

-- NOTE SOAL 9:
-- DISTINCT = digunakan untuk mencari unique thing, contohnya customer unik dari customer_id


-- 10. buat shift based sale_time (pagi <12, sore 12-17, malam > 17)
-- dan COUNT number of orders untuk setiap shift. DAN hasil total_Sale per shift. 
SELECT
	CASE
		WHEN EXTRACT (HOUR FROM sale_time) < 12 THEN 'PAGI'
		WHEN EXTRACT (HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'SORE'
		ELSE 'MALAM'
	END AS shift,
	COUNT(transactions_id) AS total_orders,
	ROUND(SUM(total_sale)::numeric,2) AS total_sales
FROM retail_sales
GROUP BY shift
ORDER BY total_orders DESC;

-- NOTE SOAL 10:
-- CASE ... END AS.. = mengelompokkan waktu transaksi menjadi 3 kategori


-- 11. diantara umur berikut ini (<20, 20-35, 36-50, >50) kelompok mana yang memiliki kontribusi
-- terbesar untuk total_Sale
SELECT 
	CASE
		WHEN age < 20 THEN '<20'
		WHEN age BETWEEN 20 AND 35 THEN '20-35'
		WHEN age BETWEEN 36 AND 50 THEN '36-50'
		ELSE '>50'
	END AS age_group,
	COUNT(transactions_id) AS total_transactions,
	SUM(total_sale) AS total_sales,
	ROUND(AVG(total_sale)::numeric,2) AS avg_sale_per_transactions
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC;


-- 12. bandingkan total sales per gender in each category.
SELECT 
	category, 
	gender,
	COUNT(transactions_id) AS transactions_total,
	SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY 1,2
ORDER BY 1,3 DESC;


SELECT * FROM retail_sales;