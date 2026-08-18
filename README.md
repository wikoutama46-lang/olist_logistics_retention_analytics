<p align="center"> <img src="/images/" width="300">
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
- **Buat Program Loyalty yang kuat**, berdasarkan data yang menunjukkan pola musiman pada pembelian produk. Olist harus merancang program Loyalty yang bisa mendatangkan pelanggan lagi. Contoh seperti memberi gratis ongkir pada pelanggan yang adalah pelanggan setia.