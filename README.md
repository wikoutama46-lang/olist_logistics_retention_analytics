![Olist Logo](/images/logo.png)

# Olist Company Analysis
## Background and Overview
Olist is a Brazilian e-commerce company that partners with sellers by helping them sell their products on a single platform with a robust system. This project analyzes two things: identifying the fairly high Late Delivery Rate and whether it affects Olist's rating, and the second analysis examines indications of Churn Rate, with the assumption that customers who have not made a purchase within 90 days are considered churned. The scope of the analysis covers the dataset's most recent year, 2018.

Several key metrics used:
- Late Delivery Rate, as the primary figure in the logistics analysis
- On-Time Delivery Rate, to compare on-time versus late deliveries
- Late Delivery Impact Rate, the percentage of how much delays affect Olist's rating
- Churn Rate, measuring the percentage of customers who no longer make a purchase
- Repeat Purchase Rate, a supporting percentage for Churn Rate


📄 Click [here](Scripts/) to view the SQL scripts.

📊 Click [here](dashboard.pbix) to view the Power BI dashboard.
### Logistics: Dashboard Overview
![Dashboard Overview Logistics](/images/logistics/dashboard_overview_logistics.gif)

### Churn Rate: Dashboard Overview
![Dashboard Overview Churn Rate](/images/churnrate/dashboard_overview_churn_rate.gif)

## Data Structure Overview
![Data Structure Overview](/images/database_schema.png)



## Executive Summary 
- **Sellers should prepare their stock in the early quarter**, the data shows the highest surge in total orders in Qtr 1 and Qtr 2 in State SP (highest Total Order of all states) and State RJ (highest Late Delivery Rate). 
- **Conduct an investigation to address the gaps in size/volume and weight data for products**, likely originating from the system or from sellers who did not enter it. 
- **Carry out accurate segmentation and SLA for size/volume**, since there is a pattern showing size/volume as a cause of delays. Olist's operations team can segment items based on their size/volume, then assign an SLA suited to each level.
- **Resolve the issue related to Freight Value**; Olist shows indications of a fairly high Churn Rate in several of its top states, caused by high Freight Value in those states. Olist could set a price threshold on products for customers to qualify for free shipping.
- **The marketing team should build a strong Loyalty Program** to encourage customers to make repeat purchases.

## Insights Deep Dive
### A. Does the delay affect Olist's rating?
![Scatterplot All](/images/logistics/scatterplot(all).png)
![Total Order All](/images/logistics/total_order.png)

#### a. State SP <br>
![SP](/images/logistics/sp.png) <br>
This state is within a safe range; as the state with the highest total orders (23.33K), its late delivery rate is fairly low at only 5%. <br> <br>
Olist's Logistics Condition in State SP, 2018:
![Overview Dashboard](/images/logistics/overview_dashboard_(sp).png) <br>
#### b. State RJ <br>
![alt-text](/images/logistics/rj.png) <br> 
**RJ has the highest late delivery rate and the greatest impact on low ratings among all existing states**. <br> <br>
Olist's Logistics Condition in State RJ, 2018:
![Overview Dashboard](/images/logistics/overview_dashboard_(rj).png) <br> <br>
Some findings include:
- On average in 2018, compared to the overall Late Delivery Rate across all states of 7.73%, RJ reached 13.74% in the same period. **RJ's Late Delivery Rate rose from the first month to February (34.0%) and March (34.5%), coinciding with a surge in orders.** <br>
However, January also had a high total order count, nearly matching February and March. The late delivery rate then dropped in the 2nd quarter with fairly significant fluctuation, and in July it rose to 2.4% and rose again this month to 5.8%.
![alt text](/images/logistics/combo_chart_(sp).png)
- **Distance affects the late delivery rate for customers in state RJ**; sellers located in a different state from the customer have the highest late delivery rate (14.5%) with a total of 5,791 orders, followed by **local sellers, who actually have a late delivery rate as high as 10.4%, though with only 144 total orders compared to 415 total orders for regional sellers,** indicating potential bias from a small sample. Even so, further identification is still needed to explain why local sellers have a higher late delivery rate than regional sellers. 
![alt text](/images/logistics/distance_(rj).png) 
- **The shipping limit days given to sellers, in fact, show no correlation with whether a tighter deadline affects the late delivery rate**. The results fluctuate, with the highest late delivery rate occurring at a 6-day shipping limit, which also has the highest total orders (2,406); within that 6-day range, interprovincial distance and product volume were found to be significant contributing factors.
![alt text](/images/logistics/limit_(rj).png)
- **The highest late delivery rate by size category falls under Large and Extra Large (14.7% and 14.6%)**, with 1,942 and 364 total orders respectively in 2018. This indicates that the high Late Delivery Rate may stem from sellers struggling to prepare high-volume items, causing delayed shipments. <br>
On the other hand, the **Weight chart shows more varied results**; the Heavy category contributes the most to the Late Delivery Rate at 15.4%, but with only 629 total orders in 2018. <br> 
A notable finding here is that there is a **blank entry in both charts**, which together account for a Late Delivery Rate of 10.9% and 64 total orders in 2018, meaning 64 total orders were not recorded because the system, or the sellers themselves, did not include the size and weight.
![Volume and Weight RJ](/images/logistics/volume_and_weight_(rj).png)
- **Sports Leisure has the highest Late Delivery Rate**; among the top 5 categories by total order, the Sports Leisure product category experienced the highest rate of delays, at 18.6%, followed by Bed Bath Table at 16.4% and Computers Accessories at 15.5%. Its impact on ratings is fairly significant, reaching 72.41% in 2018.
![Product RJ](/images/logistics/product_(rj).png)

### B. Are there indications of Churn Rate? 
![Dashboard Oveview Top Five](/images/churnrate/dashboard_overview_top_five.png)
Last year, the Repeat Purchase Rate dropped by -16.3%, with a gap from target of -85.4%, while total customers rose significantly compared to the previous year by 147.8%, although still below target with a percentage gap of -19.9%. 
<br> <br>
Below are some of the findings I found:

- **State RJ is an outlier** <br>
State RJ's late delivery rate does not affect its Repeat Purchase Rate; the cause of its high Late Delivery Rate has already been discussed earlier.
![Scatterplot 1 of Top Five](/images/churnrate/scatterplot_1_top_five.png)

- **State SP has the lowest Freight Value** and the smallest Churn Rate among the top 5 states by order volume; the low shipping cost stems from the efficiency of Olist's logistics operations, which makes sense given that state SP contributes significantly to overall orders. **The other states show a pattern suggesting Freight may influence Churn Rate**.
![Scatterplot 2 of Top Five](/images/churnrate/scatterplot_2_top_five.png)
- **Seasonal patterns are a major factor in Olist's Churn Rate**; it is very low in the first quarter, which is the peak of the Repeat Purchase Rate (2.09%), then declines in the second and third quarters. This strongly suggests that Olist customers lack loyalty to make repeat purchases. 
![Product of Top Five](/images/churnrate/product_top_five.png)



## Recommendation
### 1. Logistics
- **Sellers should prepare their stock in the early quarter**, since there is a high surge in total orders during that period. **Optimize the warehouse** by placing best-selling products in easily accessible locations; if warehouse capacity is full, add extra storage space or prepare emergency stock. **Provide training and arrange adaptive shift schedules** when handling operations and customer service regarding SOPs during peak periods. **Inform customers transparently about delays**, to maintain communication with customers.
- **Use a Multiwarehouse or Distributed Fulfillment strategy** to handle orders outside the state, by upgrading warehouses in strategic locations with high order volumes; with this strategy, lead time is much lower, product damage is minimized, and on-time delivery rate improves. **Also improve the accuracy of the estimates provided by the system**, so customers do not feel misled when the given estimate turns out to be unrealistic.
- **Conduct an investigation to address the gaps in size/volume and weight data for products**, likely originating from the system or from sellers who did not enter it. **Carry out accurate segmentation and SLA for size/volume**, since there is a pattern showing size/volume as a cause of delays. Olist's operations team can segment items based on their size/volume, then assign an SLA suited to each level.
- **Conduct a Root Cause Analysis** on **product categories that contribute to a high late delivery rate** compared to other product categories. <br> 
Also conduct one on the **local distance category**, whose late delivery rate is fairly high; although there is bias in this sample, it still deserves attention.


### 2. Churn Rate
- **Olist could invest in resolving the issue related to Freight Value**, which is a cause of Churn Rate in several of its top states, such as by **setting a Freight Value Threshold** that gives customers a price cutoff to qualify for free shipping.
- **Build a strong Loyalty Program**, based on data showing a seasonal pattern in product purchases. Olist should design a Loyalty program that can bring customers back. For example, offering free shipping to customers who are loyal, repeat customers.

<!-- <p align="center"> <img src="/images/" width="300">
</p>

# Olist Company Analysis
## Background and Overview
Olist adalah perusahaan e-commerce asal Brazil yang mengajak kerja sama dengan seller yang membantu mereka menjual produk mereka pada satu platform yang mempunyai sistem yang kuat. Proyek ini menganalisis dua hal yaitu mengidentifikasi Late Delivery Rate yang cukup tinggi, dan apakah memengaruhi rating Olist, analisis kedua yaitu menganalisis indikasi Churn Rate dengan asumsi pelanggan tidak membeli selama 90 hari akan dinyatakan churn. Cakupan analisis pada tahun terakhir dataset yaitu tahun 2018.

Beberapa metrik utama yang digunakan:
- Late Delivery Rate, sebagai angka utama dalam analisis logistik
- On-Time Delivery Rate, untuk membandingkan perbedaan pengiriman yang tepat waktu dan telat.
- Late Delivery Impact Rate, persentase seberapa berpengaruh keterlambatan kepada rating Olist
- Churn Rate, mengukur persentase pelanggan yang tidak membeli lagi
- Repeat Purchase Rate, persentase pendukung Churn Rate


📄 Click [here](Scripts/) to view the SQL scripts.

📊 Click [here](dashboard.pbix) to view the Power BI dashboard.
### Logistics
![Dashboard Overview Logistics](/images/logistics/dashboard_overview_logistics.png)

### Churn Rate
![Dashboard Overview Churn Rate](/images/churnrate/dashboard_overview_churn_rate.png)

## Data Structure Overview
![Data Structure Overview](/images/database_schema.png)



## Executive Summary 
- **Seller harus mempersiapkan stok mereka pada kuartal awal**, data menunjukkan lonjakan tertinggi total order pada Qtr 1 dan Qtr 2 pada State SP (Total Order tertinggi dari semua state) dan State RJ (Late Delivery Rate tertinggi). 
- **Lakukan penelusuran untuk mengatasi kekosongan pada size/volume dan weight pada produk**, kemungkinan berasal dari sistem atau seller yang tidak mencantumkannya. 
- **Lakukan segmentasi dan SLA yang akurat pada size/volume**, karena ada pola pada size/volume sebagai penyebab keterlambatan. Pihak operasional Olist bisa melakukan segmentasi pada barang berdasarkan size/volume mereka, lalu berikan SLA yang sesuai berdasarkan tingkatnya.
- **Pecahkan masalah terkait Freight Value**, Olist memiliki indikasi Churn Rate yang cukup tinggi pada beberapa State teratas mereka, penyebabnya terkait Freight Value tinggi di beberapa State. Olist bisa menetapkan ambang batas harga pada produk untuk mendapatkan gratis ongkir.
- **Tim pemasaran harus membuat Program Loyalty** yang kuat untuk memancing pelanggan membeli lagi.

## Insights Deep Dive
### A. Apakah keterlambatan memengaruhi rating terhadap Olist?
![Scatterplot All](/images/logistics/scatterplot(all).png)
![Total Order All](/images/logistics/total_order.png)

#### a. State SP <br>
![SP](/images/logistics/sp.png) <br>
State ini berada dalam batas aman, sebagai state dengan total order tertinggi (23.33K) late delivery ratenya cukup rendah hanya 5%. <br> <br>
Kondisi Logistik Olist State SP 2018:
![Overview Dashboard](/images/logistics/overview_dashboard_(sp).png) <br>
#### b. State RJ <br>
![alt-text](/images/logistics/rj.png) <br> 
**RJ memiliki late delivery rate dan dampak pada low rating tertinggi dari semua state yang ada**. <br> <br>
Kondisi Logistik Olist State RJ 2018:
![Overview Dashboard](/images/logistics/overview_dashboard_(rj).png) <br> <br>
Beberapa temuan antara lain:
- Pada rata-rata tahun 2018, sebagai perbandingan Late Delivery Rate pada semua state itu 7.73% dan untuk RJ mencapai 13.74% pada periode yang sama. **Late Delivery Rate RJ dari bulan pertama naik ke Februari (34.0%) dan Maret (34.5%) bersamaan dengan lonjakan order yang tinggi.** <br>
Namun Januari juga memiliki total order yang tinggi hampir sama dengan bulan Februari dan Maret. Lalu late delivery rate kemudian turun pada kuartal ke-2 mengalami fluktuasi yang lumayan, dan pada bulan Juli naik menjadi 2.4% dan naik lagi bulan ini 5.8%.
![alt text](/images/logistics/combo_chart_(sp).png)
- **Jarak memengaruhi late delivery rate dari pelanggan state RJ**, seller yang berbeda state dengan pelanggan memiliki late delivery rate yang paling tinggi (14.5%) dengan total order mencapai 5791, disusul **lokal justru memiliki late delivery rate hingga (10.4%) dengan catatan total order hanya 144 dibanding dengan regional berjumlah 415 total order,** sehingga ada potensi bias dari sampel yang kecil. Meski begitu tetap memerlukan identifikasi lebih lanjut alasan lokal memiliki late delivery rate yang lebih tinggi dari regional. 
![alt text](/images/logistics/distance_(rj).png) 
- **Pada shipping limit days yang diberikan pada seller justru tidak memberikan korelasi apakah deadline yang sempit memengaruhi late delivery rate**. Hasilnya fluktuatif dan Late delivery rate tertinggi tertuju pada 6 hari shipping limit days dengan total order tertinggi (2406), ditemukan pada rentang 6 hari tersebut kategori jarak interprovinsi dan volume dari produk menjadi faktor kontribusi yang cukup besar.
![alt text](/images/logistics/limit_(rj).png)
- **Late delivery rate dari kategori size tertinggi jatuh kepada Large dan Extra Large (14.7% dan 14.6%)**, dengan total order 1942 dan 364 pada tahun 2018. Mengindikasikan kemungkinan bahwa Late Delivery Rate yang tinggi bisa berasal dari seller yang kesulitan dalam mempersiapkan barang bervolume besar sehingga terlambat mengirimkan pesanan. <br>
Di sisi lain pada **chart Weight justru hasilnya bervariasi**, kategori Heavy memiliki kontribusi paling besar pada Late Delivery Rate sebesar 15.4% tapi dengan total order 629 saja pada tahun 2018. <br> 
Temuan yang bisa terlihat di sini adalah bahwa ada **blank pada chart keduanya**, dan sama-sama memiliki Late Delivery Rate 10.9% dan total order 64 pada tahun 2018, berarti ada 64 total order yang tidak tercatat karena sistem atau dari seller sendiri yang tidak mencantumkan ukuran dan berat.
![Volume and Weight RJ](/images/logistics/volume_and_weight_(rj).png)
- **Sports Leisure memiliki Late Delivery Rate tertinggi**, berdasarkan top 5 kategori produk dengan total order tertinggi kategori produk sports leisure mengalami keterlambatan paling tinggi, dengan nilai 18.6% diikuti Bed Bath Table 16.4% dan Computers Accessories 15.5%. Dampaknya pada rating cukup tinggi hingga 72.41% pada tahun 2018.
![Product RJ](/images/logistics/product_(rj).png)

### B. Apakah ada indikasi Churn Rate? 
![Dashboard Oveview Top Five](/images/churnrate/dashboard_overview_top_five.png)
Repeat Purchase Rate pada tahun lalu turun sebesar -16.3% dan selisih dari target sangat rendah sebesar -85.4%, namun dengan total pelanggan yang naik tinggi dibanding tahun lalu sebesar 147.8% meskipun masih di bawah target dengan selisih persentase sebesar -19.9%. 
<br> <br>
Berikut beberapa temuan yang saya dapatkan:

- **State RJ menjadi outlier** <br>
Late delivery rate dari state RJ tidak memengaruhi Repeat Purchase Rate miliknya, penyebab Late Delivery Rate yang tinggi sudah dibahas sebelumnya.
![Scatterplot 1 of Top Five](/images/churnrate/scatterplot_1_top_five.png)

- **State SP memiliki Freight Value terendah** dan memiliki Churn Rate yang paling kecil berdasarkan top 5 order, penyebab biaya ongkir rendah berasal dari efisiensi pihak logistik Olist dan ini masuk akal karena state SP sangat berkontribusi besar pada order. **State lainnya menunjukkan pola kemungkinan Freight dipengaruhi oleh Churn Rate**.
![Scatterplot 2 of Top Five](/images/churnrate/scatterplot_2_top_five.png)
- **Pola musiman menjadi faktor utama Churn Rate Olist** sangat rendah pada Qtr pertama menjadi puncak Repeat Purchase Rate (2.09%) kemudian turun pada Qtr kedua dan ketiga. Berkemungkinan pasti bahwa pelanggan Olist tidak memiliki loyalitas untuk membeli lagi. 
![Product of Top Five](/images/churnrate/product_top_five.png)



## Recommendation
### 1. Logistics
- **Seller harus mempersiapkan stok mereka pada kuartal awal**, karena ada lonjakan tinggi pada total order di periode tersebut. **Optimisasi gudang**, taruh produk terlaris di tempat yang mudah dijangkau, jika kapasitas gudang sudah penuh tingkatkan ruang penyimpanan ekstra atau siapkan stok darurat. **Berikan pelatihan dan atur jadwal shift yang adaptif** saat menangani operasional dan pelayanan terhadap pelanggan mengenai SOP pada masa puncak. **Beri tahu pelanggan secara transparan terkait keterlambatan**, untuk menjaga komunikasi dengan para pelanggan.
- **Gunakan strategi Multiwarehouse atau Distributed Fulfillment** guna mengatasi pesanan di luar state, tingkatkan gudang-gudang dengan lokasi strategis yang memiliki order tinggi, dengan strategi ini lead-timenya jauh lebih rendah, meminimalkan kerusakan produk, dan meningkatkan on-time delivery rate. **Tingkatkan juga akurasi estimasi yang diberikan sistem**, pelanggan tidak akan merasa tertipu jika estimasi yang diberikan ternyata tidak realistis.
- **Lakukan penelusuran untuk mengatasi kekosongan pada size/volume dan weight pada produk**, kemungkinan berasal dari sistem atau seller yang tidak mencantumkannya. **Lakukan segmentasi dan SLA yang akurat pada size/volume**, karena ada pola pada size/volume sebagai penyebab keterlambatan. Pihak operasional Olist bisa melakukan segmentasi pada barang berdasarkan size/volume mereka, lalu berikan SLA yang sesuai berdasarkan tingkatnya.
- **Lakukan Root Cause Analysis** pada **kategori produk-produk dengan kontribusi late delivery rate yang tinggi** dibanding dengan kategori produk lainnya. <br> 
Lakukan juga pada **kategori jarak lokal** yang late delivery ratenya cukup tinggi meskipun ada bias pada sampel ini tetap bisa menjadi perhatian.


### 2. Churn Rate
- **Olist bisa berinvestasi untuk memecahkan masalah terkait Freight Value** yang menjadi penyebab Churn Rate di beberapa State teratasnya seperti dengan **menetapkan Threshold Freight Value** yang mana memberi batas harga produk tertentu untuk pelanggan mendapatkan gratis ongkir.
- **Buat Program Loyalty yang kuat**, berdasarkan data yang menunjukkan pola musiman pada pembelian produk. Olist harus merancang program Loyalty yang bisa mendatangkan pelanggan lagi. Contoh seperti memberi gratis ongkir pada pelanggan yang adalah pelanggan setia. -->