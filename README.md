# Retail-Sales-Analysis---SQL-PostgreSQL-Tableau
End-to-end data analysis project using PostgreSQL for data exploration &amp; cleaning, and Tableau for interactive dashboard visualization.


📌**Project Overview**  
This project explores a retail sales dataset containing transaction-level information such as customer details, product categories, and total sales. The goal is to practice real-world SQL analysis, uncover sales insights, and visualize business performance through dashboards. I used this project to strengthen my SQL fundamentals and build a clean, professional portfolio piece. <br>
<br>
<br>
✉️**Dataset Information**<br>
The dataset includes the following columns:<br>
1. transaction_id
2. sale_date
3. sale_time
4. customer_id
5. gender
6. age
7. category
8. quantiy
9. price_per_unit
10. cogs
11. total_Sale
<br>
📝Note: Dataset source and schema were initially guided by the reference video below, with additional modifications and expanded analysis done independently.
<br>
<br>
🎯**Objective**
<br>
This project answers key business question such as:  SQL Analysis (PostgreSQL)
<br>
<br>
1. Write SQL query to retrieve all columns for sales made on '2023-08-21' in 10.00 - 12.00<br>
2. Write a SQL query to retrive all transaction where the category is 'clothing' dan bandingkan antar bulan untuk melihat kapan 'clothing' memiliki penjualan paling tinggi.<br>
3. Calculate total_sales untuk setiap kategori + tambahkan kolom presentase total untuk mengetahui kontribusi setiap kategori terhadap total sales.<br>
4. Temukan average age dari kustomer yang mempurcase items dari beauty kategori dan tampilkan rata-rata usia untuk semua kategori.<br>
5. Temukan semua transaksi dimana total_sale lebih besar dari 1800 dan diantara 1800 & 1500 dan cari juga rata2 total_sale untuk transaksi diatas 1800 dan dibawah 1800.<br>
6. Temukan total number dari setiap transaksi (COUNT(transaction_id) dari setiap gender di setiap kategori. dan tambahkan kolom avg_sale_pertransactions untuk melihat pola pembelian pria vs wanita.<br>
7. Hitung avg total sale untuk setiap untuk setiap bulan dan temukan best selling bulan di setiap tahun dan buat ranking (RANK()) untuk analisis tren tiap tahun.<br>
8. Temukan top 5 kustomer berdasarkan total sales tertinggi.<br>
9. Temukan number of unique customer yang mempurchase item dari setiap kategori. dan cari matriks "rata-rata quantity per customer" untuk engagement tiap kategori.<br>
10. Buat shift based sale_time (pagi <12, sore 12-17, malam > 17) dan COUNT number of orders untuk setiap shift. DAN hasil total_Sale per shift.<br>
11. Diantara umur berikut ini (<20, 20-35, 36-50, >50) kelompok mana yang memiliki kontribusi terbesar untuk total_Sale.<br>
12. Bandingkan total sales per gender in each category.<br>
<br>
<br>
📊**Tableau Dashboard**<br>
The Dashboard Includes: 
1. Top Sales
2. Sales by Category
3. Profit/Cogs vs Sales
4. Top Selling Category/Product
5. Sales by Gender
6. Sales by Age Group
7. Customer Segmentation
8. Top 5 Customer
9. Monthly Sales Trends by Year
10. Daily Sales by Time of Day
11. Best Selling Month per Year
12. Sales by Weekday
13. Cogs vs Sales (Profitability)
<br>
🔗**Tableau Public Link:** https://public.tableau.com/app/profile/putri.wardani.lich/vizzes


🛠️**Tools**<br>
1. PostgreSQL - Data cleaning, exploration, and analysis
2. Tableau Desktop & Public - Visualization and dashboard
3. Github - Project documentation
4. pgAdmin 4 - SQL Development


📚**References** 
This project was inspired by SQL Data Analysis Portfolio Project #01/10 | Beginner to Advance Guide for Aspiring Data Analysts by Zero Analyst on Youtube.
Original walkthrough: 
👉 **Youtube Link:** https://www.youtube.com/watch?v=ChIQjGBI3AM&list=PLF2u7Zn-dIxbeais0AkBxUqdWM1hnSJDS 
👉 **Dataset Link:** https://github.com/najirh/Retail-Sales-Analysis-SQL-Project--P1/blob/main/SQL%20-%20Retail%20Sales%20Analysis_utf%20.csv

📝**Note: **Some initial SQL steps and dataset structure follow the tutorial. However, all extended queries, deeper analysis, and final Tableau dashboard were created independently for portfolio purposes. 


⭐**Key Learning**
1. Writing clean and optimized SQL queries
2. Using window functions, CTEs, grouping & date functions
3. Creating business insights from transactional data
4. Designing dashboards with storytelling principles
5. Presenting end-to-end analytics workflow


🚀**Next Step**
Future improvements may include: 
1. Adding Python (Pandas) for deeper analysis
2. Building automated dashboard
3. Deploying results via Streamlit or Flask


📬**Contact**
If you're a recruiter or collaborator, feel free to reach out!
🔗**LinkedIn:**https://www.linkedin.com/in/putriayulichawardani
📩**Email:**putriayulw10@gmail.com

