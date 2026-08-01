<p align="center"> <img src="image/logo.png" width="300">
</p>

# Olist Company Analysis
## Backgound and Overview
This project analyzes two main pillars in e-commerce, namely logistics and customer retention. The primary problem to be solved is observing the impact of the deviation between estimated delivery and actual arrival in the customer's hands on the decline of review scores in each region. The second problem is analyzing Olist's business health by observing customers who make repeat purchases within a 90-day period after their first transaction, in order to identify any indications of churn rate.

The analytical techniques used include delivery deviation analysis and the segmentation of review scores received by Olist, grouped by region to map the states with the worst score declines. Furthermore, a cohort retention analysis is conducted to track customer frequency and lifecycle. The expected final result is an interactive dashboard with two pages (tabs): the first page displays charts for delivery deviations and review score distribution per region, while the second page contains the cohort retention matrix, churn rate, as well as customer frequency and lifecycle.


📄 Click [here](Scripts/) to view the SQL scripts.

📊 Click [here](dashboard.pbix) to view the Power BI dashboard.

## Data Structure Overview



## Execute Summary 




## Insights Deep Dive
![alt text](/image/scatter_plot.png)
![alt text](/image/total_order.png)
### Top Three State (SP, RJ, MG)
1. State SP <br>
![alt text](/image/sp.png)
 <br>
    Sebagai state dengan total order teringgi (23.33K), state ini berada di area aman, Late Delivery nya juga rendah hanya 5%.<br>
    ![alt text](/image/sp.png)
2. State RJ <br>
    ![alt-text](/image/rj.png) <br>
    RJ memiliki delivery rate dan dampak pada low rating tertinggi dari semua state yang ada. <br>
    Beberapa penyebabnya antara lain: 
    - Pada rata-rata tahun 2018, sebagai perbandingan Late Delivery Rate pada semua state itu 7.73% dan untuk RJ mencapai 13.74% pada periode yang sama. Late Delivery Rate RJ dari Bulan pertama naik ke February (34.0%) dan March (34.5%) bersamaan dengan lonjakan order yang tinggi, tapi January juga memiliki total order yang tinggi hampir sama dengan bulan February dan March, bisa jadi ada indikasi musiman penyebab dan perlu diidentifikasi lebih lanjut, lalu late delivery rate kemudian turun pada kuartal ke-2 mengalami fluktuasi yang lumayan, dan pada bulan July naik menjadi 2.4% dan naik lagi bulan ini 5.8%.
    ![alt text](/image/combo_chart_(sp).png)
    - Jarak mempengaruhi delivery rate dari customer state RJ, seller yang berbeda state dengan customer memiliki delivery rate yang paling tinggi (14.5%) dengan total order mencapai 5791, disusul local justru memiliki late delivery rate hingga (10.4%) dengan catatan total order hanya 144 dibanding dengan regional berjumlah 415 total order, sehingga ada potensi bias dari sample yang kecil. Meski begitu tetap memerlukan identifikasi lebih lanjut alasan local memiliki late delivery yang lebih tinggi dari regional. 
    ![alt text](/image/distance_(rj).png) 
    - Pada shipping limit days yang diberikan pada seller justru tidak memberikan korelasi apakah deadline yang sempit memberikan late delivery yang besar juga, hasilnya fluktuatif. Late delivery tertinggi tertuju pada 6 hari shipping limit days dengan total order tertinggi (2406), ditemukan jarak interprovincial dan volume dari product  menjadi faktor kontribusi yang cukup besar.
    ![alt text](/image/limit_(rj).png)
    ![alt text](/image/volume_and_weight_(rj).png)

## Recommendation