<p align="center"> <img src="images/logo.png" width="300">
</p>

# Olist Company Analysis
## Backgound and Overview
This project analyzes two main pillars in e-commerce, namely logistics and customer retention. The primary problem to be solved is observing the impact of the deviation between estimated delivery and actual arrival in the customer's hands on the decline of review scores in each region. The second problem is analyzing Olist's business health by observing customers who make repeat purchases within a 90-day period after their first transaction, in order to identify any indications of churn rate.

The analytical techniques used include delivery deviation analysis and the segmentation of review scores received by Olist, grouped by region to map the states with the worst score declines. Furthermore, a cohort retention analysis is conducted to track customer frequency and lifecycle. The expected final result is an interactive dashboard with two pages (tabs): the first page displays charts for delivery deviations and review score distribution per region, while the second page contains the cohort retention matrix, churn rate, as well as customer frequency and lifecycle.


📄 Click [here](Scripts/) to view the SQL scripts.

📊 Click [here](dashboard.pbix) to view the Power BI dashboard.

[Data Structure Overview](#data-structure-overview)
## Data Structure Overview



## Execute Summary 




## Insights Deep Dive
![Scatterplot All](/images/scatterplot(all).png)
![Total Order All](/images/total_order.png)
### Top Two State (SP and RJ)
#### 1. State SP <br>
![SP](/images/sp.png) <br>
State ini berada dalam batas aman, sebagai state dengan total order tertinggi (23.33K) late delivery ratenya cukup renah hanya 5%. <br> <br>
Kondisi Logistics Olist State SP 2018:
![Overview Dashboard](/images/overview_dashboard_(sp).png) <br>
#### 2. State RJ <br>
![alt-text](/images/rj.png) <br> 
**RJ memiliki delivery rate dan dampak pada low rating tertinggi dari semua state yang ada**. <br> <br>
Kondisi Logistic Olist State RJ 2018:
![Overview Dashboard](/images/overview_dashboard_(rj).png) <br> <br>
Beberapa temuan antara lain:
- Pada rata-rata tahun 2018, sebagai perbandingan Late Delivery Rate pada semua state itu 7.73% dan untuk RJ mencapai 13.74% pada periode yang sama. **Late Delivery Rate RJ dari Bulan pertama naik ke February (34.0%) dan March (34.5%) bersamaan dengan lonjakan order yang tinggi.** <br>
Namun January juga memiliki total order yang tinggi hampir sama dengan bulan February dan March. Lalu late delivery rate kemudian turun pada kuartal ke-2 mengalami fluktuasi yang lumayan, dan pada bulan July naik menjadi 2.4% dan naik lagi bulan ini 5.8%.
![alt text](/images/combo_chart_(sp).png)
- **Jarak mempengaruhi delivery rate dari customer state RJ**, seller yang berbeda state dengan customer memiliki delivery rate yang paling tinggi (14.5%) dengan total order mencapai 5791, disusul **local justru memiliki late delivery rate hingga (10.4%) dengan catatan total order hanya 144 dibanding dengan regional berjumlah 415 total order,** sehingga ada potensi bias dari sample yang kecil. Meski begitu tetap memerlukan identifikasi lebih lanjut alasan local memiliki late delivery yang lebih tinggi dari regional. 
![alt text](/images/distance_(rj).png) 
- **Pada shipping limit days yang diberikan pada seller justru tidak memberikan korelasi apakah deadline yang sempit mempengaruhi late delivery rate**. Hasilnya fluktuatif dan Late delivery rate tertinggi tertuju pada 6 hari shipping limit days dengan total order tertinggi (2406), ditemukan pada hari rentang 6 hari tersebut kategori jarak interprovincial dan volume dari product menjadi faktor kontribusi yang cukup besar.
![alt text](/images/limit_(rj).png)
- Late delivery rate dari kategori size paling tertinggi jatuh kepada Large dan Extra Large (14.7% dan 14.6%), dengan total order 1942 dan 364 pada tahun 2018. Mengindikasikan kemungkinan bahwa Late Delivery Rate yang tinggi bisa berasal dari seller yang kesulitan dalam mempersiapkan barang bervolume besar sehingga terlambat mengirimkan pesanan. <br>
Disisi lain pada chart Weight justru hasilnya bervariasi, kategori Heavy memiliki kontribusi paling besar pada Late Delivery Rate sebesar 15.4% tapi dengan total order 629 saja pada tahun 2018. <br> 
Temuan yang bisa terlihat disini adalah bahwa ada blank pada chart keduanya, dan sama-sama memiliki Late Delivery Rate 10.9% dan total order 64 pada tahun 2018, berarti ada 64 total order yang tidak tercatat karena sistem atau dari seller sendiri yang tidak mencantumkan ukuran dan berat.
![Volume and Weight RJ](/images/volume_and_weight_(rj).png)
- **Sports Leisure memiliki Late Delivery Rate tertinggi**, berdasarkan top 5 kategori product dengan total order tertinggi kategori produk sports leisure mengalami keterlambatan paling tinggi, dengan nilai 18.6% diikuti Bed bath Table 16.4% dan Computers Accessories 15.5%. Dampaknya pada rating cukup tinggi hingga 72.41% pada tahun 2018.
![Product RJ](/images/product_(rj).png)
## Recommendation