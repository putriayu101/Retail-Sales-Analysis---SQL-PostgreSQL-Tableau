# Retail-Sales-Analysis---SQL-PostgreSQL-Tableau
End-to-End data analysis project using PostgreSQL for data exploration &amp; cleaning, and Tableau for interactive dashboard visualization

## 📌Project Overview
This project explores a retail sales dataset containing transaction-level information such as customer details, product categories, and total sales. The goal is to practice real-world SQL analysisi, uncover sales insight, and visualize business performance through dashboard. I used this project to strengthen my SQL fundamentals and build a clean, professional portfolio piece. 

## ✉️Dataset Information
The dataset includes the following columns:
1. transaction_id
2. sale_date
3. sale_time
4. customer_id
5. gender
6. age
7. category
8. quantity
9. price_per_unit
10. cogs
11. total_sale

**Note:** Dataset source and schema were initially guided by the reference video below, with additional modifications and expanded analysis done independently.

## 🎯Objective
This project answer key business question such as:
1. Write SQL query to retrive all columns for sales made on *2023-08-21* in *10.00 - 12.00*
2. Write a SQL query to retrive all transaction where the category is **Clothing** dan bandingkan antar bulan untuk melihat kapan **Clothing** memiliki penjualan paling tinggi
3. Calculate **total_sale** untuk setiap kategori dan tambahkan kolom **presentase total** untuk mengetahui kontribusi setiap kategori terhadap **total_sales**
4. Temukan average **age** dari customer yang mem-purcase item dari **Beauty** categori dan tampilkan rata-rata usia untuk semua kategori
5. Temukan semua transaksi dimana **total_sale** lebih besar dari 1800 dan diantara 1800 &amp; 1500, cari juga rata-rata *total_sale** untuk transaksi diatas 1800 dan dibawah 1800
6. Temukan total number dari setiap transaksi *(COUNT(transaction_id))* dari setiap gender di setiap kategori. Dan tambahkan kolom **avg_sale_pertransactions** untuk melihat pola pemberian pria vs wanita
7. Hitung average total sale untuk setiap bulan dan temukan **best selling** bulan di setiap tahun, buat ranking *(RANK())* untuk setiap analisis tren tiap tahun
8. Temukan Top 5 customer berdasarkan total sales tertinggi
9. Temukan **number of unique customer** yang mem-purchase item dari setiap kategori dan cari matriks *rata-rata quantity per customer* untuk engagement tiap kategori
10. Buat *shift based sale_time* dengan keterangan *pagi < 12, sore 12-17, malam > 17* dan **COUNT** *number of orders* untuk setiap shift. Dan cari hasil total sales per shift
11. Diantara umur berikut ini *< 20, 20-30, 36-50, >50* kelompok mana yang memiliki kontribusi terbesar untuk total sales
12. Bandingkan total sales per gender di setiap kategori

## 📊Tableau Dashboard
The dashboard Includes:
1. Top Sales
2. Sales by Category
3. Profit/Cogs vs Sales
4. Top Selling Category
5. Sales by Gender
6. Sales by Age Group
7. Customer Segmentation
8. Top 5 Customer
9. Monthly Sales Trend by Year
10. Daily Sales by Time of Day
11. Best Selling Month per year
12. Sales by Weekday
13. Cogs vs Sales (Profitability)

🔗**Tableau Public Link:** https://public.tableau.com/app/profile/putri.wardani.lich/vizzes

## 🛠️Tools
1. **PostgreSQL** - Data cleaning, exploration, and analysis
2. **Tableau Desktop &amp; Public** - Visualization and Dashboard
3. **Github** - Project Documentation
4. **pgAdmin 4** - SQL Development

## 📚References
This project
