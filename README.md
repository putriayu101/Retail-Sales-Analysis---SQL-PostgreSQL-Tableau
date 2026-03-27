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
1. Write SQL query to retrive all columns for sales made on *2023-08-21* in *10.00 - 12.00*.
   
2. Write a SQL query to retrive all transaction where the category is **Clothing** dan bandingkan antar bulan untuk melihat kapan **Clothing** memiliki penjualan paling tinggi. <br>
   **Jawab:** Kategori *Clothing* paling banyak terjual pada bulan November 2022 dengan total 24 transaksi.<br>
   <img width="196" height="236" alt="image" src="https://github.com/user-attachments/assets/d8867063-3579-4fb4-ada6-98bf009ed7aa" /> <br>

3. Calculate **total_sale** untuk setiap kategori dan tambahkan kolom **presentase total** untuk mengetahui kontribusi setiap kategori terhadap **total_sales**. <br>
   **Jawab:** Dari 3 kategori yang ada, kategori *Electronics* memiliki total sale dan persentase tertinggi diantara kategori lainnya.<br>
   <img width="364" height="99" alt="image" src="https://github.com/user-attachments/assets/a6d87a7e-7426-4ed7-9270-762ada309192" /> <br>

4. Temukan average **age** dari customer yang mem-purcase item dari **Beauty** categori dan tampilkan rata-rata usia untuk semua kategori. <br>
   **Jawab:** Rata-rata umur customer yang merepuchase dari kategori *Beauty* adalah 40 thn, serta rata rata-rata umur pelanggan untuk kategori *Electronics* adalah 41 thn dan *Clothing* adalah 42 thn.
   
5. Temukan semua transaksi dimana **total_sale** lebih besar dari 1800 dan diantara 1800 &amp; 1500, cari juga rata-rata *total_sale** untuk transaksi diatas 1800 dan dibawah 1800. <br>
   **Jawab:** Ada total 198 transaksi yang lebih dari 1800 dan diantara 1500 - 1800 dari keseluruhan total sales.<br>
   <img width="456" height="136" alt="image" src="https://github.com/user-attachments/assets/e333669c-8f0a-49af-8549-79ddd388b8a2" /> <br>

6. Temukan total number dari setiap transaksi *(COUNT(transaction_id))* dari setiap gender di setiap kategori. Dan tambahkan kolom **avg_sale_pertransactions** untuk melihat pola pembelian pria vs wanita <br>
    **Jawab:**  Rata-rata tertinggi berasal dari kategori *Beauty* dan di dominasi oleh Pria. Dan untuk Wanita paling banyak membeli di kategori *Clothing*.<br>
     <img width="470" height="137" alt="image" src="https://github.com/user-attachments/assets/0b839a3a-b61c-4703-8ee9-e34f80621b70" /> <br>

7. Hitung average total sale untuk setiap bulan dan temukan **best selling** bulan di setiap tahun, buat ranking *(RANK())* untuk setiap analisis tren tiap tahun.
   **Jawab:** *Best selling* peringkat pertama ada di bulan Juli 2022 sebesar 541,34. Peringkat kedua ada di bulan Februari 2023 sebesar 535,53.<br>
   <img width="472" height="150" alt="image" src="https://github.com/user-attachments/assets/d8a847da-500b-402c-86fa-0d9b542a1639" /> <br>

8. Temukan Top 5 customer berdasarkan total sales tertinggi
    **Jawab:** <br>
    <img width="214" height="136" alt="image" src="https://github.com/user-attachments/assets/4308e5e4-61ae-4633-8720-eafd2bd9444a" /> <br>

9. Temukan **number of unique customer** yang mem-purchase item dari setiap kategori dan cari matriks *rata-rata quantity per customer* untuk engagement tiap kategori. <br>
    **Jawab:** *Unique* customer peringkat pertama dimiliki kategori **Clothing** sebanyak 149 kustomer. <br>
    <img width="267" height="95" alt="image" src="https://github.com/user-attachments/assets/a0d970ab-3061-4784-9726-1e759ad6ecd0" /> <br>
    Dan rata-rata *quantity* per customer paling tinggi dimiliki kategori ** Electronics** sebesar 2,48 unit. <br>
    <img width="275" height="97" alt="image" src="https://github.com/user-attachments/assets/bfc1c6bd-dc3e-4d8d-89c0-5fb086b12690" /> <br>
    
10. Buat *shift based sale_time* dengan keterangan *pagi < 12, sore 12-17, malam > 17* dan **COUNT** *number of orders* untuk setiap shift. Dan cari hasil total sales per shift. <br>
    **Jawab:**<br>
    <img width="238" height="102" alt="image" src="https://github.com/user-attachments/assets/0ebf35e2-6e8c-4f0d-b1b9-ba619faea7d9" /> <br>

11. Diantara umur berikut ini *< 20, 20-30, 36-50, >50* kelompok mana yang memiliki kontribusi terbesar untuk total sales. <br>
    **Jawab:** Umur 20 - 35 tahun memiliki kontribusi terbesar untuk total sales sebesar IDR 313,800. Dan yang paling rendah berada di umur kurang dari 20 tahun, sebesar IDR 52,030.<br>
    <img width="444" height="118" alt="image" src="https://github.com/user-attachments/assets/6ba115ce-5c50-49a3-b9b7-56d38c1332fd" /> <br>

12. Bandingkan total sales per gender di setiap kategori. <br>
    **Jawab:** <br>
    <img width="470" height="156" alt="image" src="https://github.com/user-attachments/assets/3684bc77-33f7-4121-8882-790ed5522920" /> <br>

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
This project was inspired by video **SQL Data Analysis Portfolio Project #01/10 | Beginner to Advancde Guide for Aspiring Data Analysts by Zero Analyst** on Youtube.

**Original walkthrough:**<br>
👉**Youtube Link:** https://www.youtube.com/watch?v=ChIQjGBI3AM&list=PLF2u7Zn-dIxbeais0AkBxUqdWM1hnSJDS <br>
👉**Dataset Link:** https://github.com/najirh/Retail-Sales-Analysis-SQL-Project--P1/blob/main/SQL%20-%20Retail%20Sales%20Analysis_utf%20.csv

**📝Note:** Some initial SQL steps and dataset structure follow the tutorial. However, all extended queries, deeper analysis, and final tableau dashboard were created independently for poertfolio purpose. 

## ⭐Key Learning
1. Writing clean and optimized SQL queries
2. Using window function, CTEs, grouping, and date functions
3. Creating business insight from transactional data
4. Designing dashboard woth storytelling principles
5. Presenting end-to-end analytics workflow

## 📬Profile 
If you're a recruiter or collaborator, feel free to reach out!
🔗**LinkedIn:** https://www.linkedin.com/in/putriayulichawardani
📩**Email:** putriayulw10@gmail.com
