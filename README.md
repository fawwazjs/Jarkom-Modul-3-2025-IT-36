# Laporan Jarkom Modul 3 Kelompok K-36

## Anggota

| Nama | NRP|
|-------------------------------|---------------|
| Ahmad Wildan Fawwaz| 5027241001 |
| Muhammad Rakha Hananditya R.| 5027241015 |

## Asisten Penguji
| Nama | Kode Asisten |
|-----------------------|----|
| Revalina Fairuzy Azhari Putri | P4 |

## Pendahuluan

بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيْمِ

<p align="justify">
&emsp; Segala puji syukur kita panjatkan atas kehadirat Allah Subḥānahu wa Ta‘ālā, karena berkat atas rahmat, karunia, dan nikmat-Nya praktikum modul 1 untuk mata kuliah Komunikasi Data dan Jaringan Komputer dapat diselesaikan dengan cukup. Tidak lupa shalawat serta salam semoga senantiasa tercurah kepada junjungan kita Nabi Muhammad Shallallāhu ‘alaihi wa Sallam, suri teladan terbaik bagi umat manusia, beserta keluarga, sahabat, dan para pengikutnya hingga akhir zaman.
</p>

<p align="justify">
&emsp; Laporan ini disusun sebagai suatu bentuk pertanggungjawaban akademik atas kegiatan praktikum yang telah dilaksanakan. Selain itu, laporan ini berfungsi sebagai dokumentasi resmi tertulis dari seluruh rangkaian kegiatan yang telah dilakukan, sehingga dapat menjadi acuan dalam evaluasi maupun penilaian praktikum.
</p>

Rasulullah Shallallāhu ‘alaihi wa Sallam pernah bersabda:

إِذَا مَاتَ ابْنُ آدَمَ انْقَطَعَ عَمَلُهُ إِلَّا مِنْ ثَلَاثٍ: صَدَقَةٍ جَارِيَةٍ، أَوْ عِلْمٍ يُنْتَفَعُ بِهِ، أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ


<em>Artinya</em>:
<p align="justify">
"Apabila anak Adam meninggal dunia, maka terputuslah amalnya kecuali tiga perkara: sedekah jariyah, ilmu yang bermanfaat, atau anak shalih yang mendoakannya." 
<br>
(HR. Muslim, no. 1631)
</p>
  
وَمَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيهِ عِلْمًا سَهَّلَ اللَّهُ لَهُ بِهِ طَرِيقًا إِلَى الْجَنَّةِ

<em>Artinya</em>:
<p align="justify">
"Barang siapa yang menempuh jalan untuk mencari ilmu, maka Allah akan mudahkan baginya jalan menuju surga." 
 <br>
(HR. Muslim, no. 2699)
</p>
  
<p align="justify">
&emsp; Maka dari itu, semoga apa yang tertulis pada laporan ini dapat menjadi ilmu yang bermanfaat, serta menjadi keberkahan dan amal yang diterima di sisi Allah Subḥānahu wa Ta‘ālā. Semoga bagi yang membaca ini, Allah memudahkan semua langkahnya dalam menuntut ilmu, mengamalkannya, serta menjaganya agar tidak sekadar menjadi hafalan, namun juga menjadi bekal yang membawanya ke surga.
</p>

Āmīn yā Rabbal ‘ālamīn.

## Daftar Isi

- [Anggota](#anggota)
- [Pendahuluan](#pendahuluan)
- [Daftar Isi](#daftar-isi)
- [Walkthrough](#walkthrough)
	- [Soal 1](#-soal-1)
	- [Soal 2](#-soal-2)
 	- [Soal 3](#-soal-3)
  	- [Soal 4](#-soal-4)
  	- [Soal 5](#-soal-5)
  	- [Soal 6](#-soal-6)
  	- [Soal 7](#-soal-7)
  	- [Soal 8](#-soal-8)
  	- [Soal 9](#-soal-9)
  	- [Soal 10](#-soal-10)
  	- [Soal 11](#-soal-11)
  	- [Soal 12](#-soal-12)
  	- [Soal 13](#-soal-13)
  	- [Soal 14](#-soal-14)
  	- [Soal 15](#-soal-15)
  	- [Soal 16](#-soal-16)
  	- [Soal 17](#-soal-17)
  	- [Soal 18](#-soal-18)
  	- [Soal 19](#-soal-19)
  	- [Soal 20](#-soal-20)
- [Kendala Pengerjaan](#kendala-pengerjaan)
- [Revisi](#revisi)

## Walkthrough

### • Soal 1

<blockquote>
	<ol>
		<li>
			<p align="justify">
				Di awal Zaman Kedua, setelah kehancuran Beleriand, para Valar menugaskan untuk membangun kembali jaringan komunikasi antar kerajaan. Para Valar menyalakan Minastir, Aldarion, Erendis, Amdir, Palantir, Narvi, Elros, Pharazon, Elendil, Isildur, Anarion, Galadriel, Celeborn, Oropher, Miriel, Amandil, Gilgalad, Celebrimbor, Khamul, dan pastikan setiap node (selain Durin sang penghubung antar dunia) dapat sementara berkomunikasi dengan Valinor/Internet (nameserver 192.168.122.1) untuk menerima instruksi awal.
			</p>
		</li>
	</ol>
</blockquote>

<p align="justify">
&emsp; Langkah pertama adalah menyusun topologi jaringannya terlebih dahulu dan menghubungkan link antar node sesuai ketentuan soal.
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image01.png" alt="topo" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Setelah itu, untuk memastikan bahwa setiap node dapat berkomunikasi dengan internet, maka kita dapat beralih ke menu <code>Configure > Edit Network Configuration</code> untuk setiap node yang ada.
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image02.png" alt="konf" width="80%" height="80%">  
</p>

Di mana ketentuan untuk setiap nodenya:

1. **Durin**

```bash
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
    address 192.229.1.1
    netmask 255.255.255.0

auto eth2
iface eth2 inet static
    address 192.229.2.1
    netmask 255.255.255.0

auto eth3
iface eth3 inet static
    address 192.229.3.1
    netmask 255.255.255.0

auto eth4
iface eth4 inet static
    address 192.229.4.1
    netmask 255.255.255.0

auto eth5
iface eth5 inet static
    address 192.229.5.1
    netmask 255.255.255.0

up sh -c 'iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE'
```

2. **Elendil**

```bash
auto eth0
iface eth0 inet static
	address 192.229.1.101
	netmask 255.255.255.0
	gateway 192.229.1.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

3. **Isildur**

```bash
auto eth0
iface eth0 inet static
	address 192.229.1.102
	netmask 255.255.255.0
	gateway 192.229.1.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

4. **Anarion**

```bash
auto eth0
iface eth0 inet static
	address 192.229.1.103
	netmask 255.255.255.0
	gateway 192.229.1.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

5. **Miriel**

```bash
auto eth0
iface eth0 inet static
	address 192.229.1.104
	netmask 255.255.255.0
	gateway 192.229.1.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

6. **Elros**

```bash
auto eth0
iface eth0 inet static
	address 192.229.1.105
	netmask 255.255.255.0
	gateway 192.229.1.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

7. **Amandil**

```bash
auto eth0
iface eth0 inet dhcp
```

8. **Galadriel**

```bash
auto eth0
iface eth0 inet static
	address 192.229.2.101
	netmask 255.255.255.0
	gateway 192.229.2.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

9. **Celeborn**

```bash
auto eth0
iface eth0 inet static
	address 192.229.2.102
	netmask 255.255.255.0
	gateway 192.229.2.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

10. **Oropher**

```bash
auto eth0
iface eth0 inet static
	address 192.229.2.103
	netmask 255.255.255.0
	gateway 192.229.2.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

11. **Celebrimbor**

```bash
auto eth0
iface eth0 inet static
	address 192.229.2.104
	netmask 255.255.255.0
	gateway 192.229.2.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

12. **Pharazon**

```bash
auto eth0
iface eth0 inet static
	address 192.229.2.105
	netmask 255.255.255.0
	gateway 192.229.2.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

13. **Gilgalad**

```bash
auto eth0
iface eth0 inet dhcp
```

14. **Khamul**

```bash
auto eth0
iface eth0 inet dhcp
```

15. **Erendis**

```bash
auto eth0
iface eth0 inet static
	address 192.229.3.101
	netmask 255.255.255.0
	gateway 192.229.3.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

16. **Amdir**

```bash
auto eth0
iface eth0 inet static
	address 192.229.3.102
	netmask 255.255.255.0
	gateway 192.229.3.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

17. **Aldarion**

```bash
auto eth0
iface eth0 inet static
	address 192.229.4.101
	netmask 255.255.255.0
	gateway 192.229.4.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

18. **Palantir**

```bash
auto eth0
iface eth0 inet static
	address 192.229.4.102
	netmask 255.255.255.0
	gateway 192.229.4.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

19. **Narvi**

```bash
auto eth0
iface eth0 inet static
	address 192.229.4.103
	netmask 255.255.255.0
	gateway 192.229.4.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

20. **Minastir**

```bash
auto eth0
iface eth0 inet static
	address 192.229.5.101
	netmask 255.255.255.0
	gateway 192.229.5.1

up sh -c 'echo "nameserver 192.168.122.1" > /etc/resolv.conf'
```

### • Soal 2

<blockquote>
	<ol start="2">
		<li>
			<p align="justify">
				Raja Pelaut Aldarion, penguasa wilayah Númenor, memutuskan cara pembagian tanah client secara dinamis. Ia menetapkan:
			</p>
			<ul>
				<li>Client Dinamis Keluarga Manusia: Mendapatkan tanah di rentang [prefix ip].1.6 - [prefix ip].1.34 dan [prefix ip].1.68 - [prefix ip].1.94.</li>
				<li>Client Dinamis Keluarga Peri: Mendapatkan tanah di rentang [prefix ip].2.35 - [prefix ip].2.67 dan [prefix ip].2.96 - [prefix ip].2.121.</li>
				<li>Khamul yang misterius: Diberikan tanah tetap di [prefix ip].3.95, agar keberadaannya selalu diketahui. Pastikan Durin dapat menyampaikan dekrit ini ke semua wilayah yang terhubung dengannya.</li>
		</li>
	</ol>
</blockquote>

<p align="justify">
&emsp; Untuk menetapkan range pool IP untuk client dinamis, maka kita perlu mengkonfigurasi terlebih dahulu <b>DHCP Server (Aldarion)</b> dan <b>DHCP Relay (Durin)</b>. Di mana langkah implementasinya:
</p>

#### • DHCP Server

1. Memperbarui daftar package yang ada pada apt-get.

```bash
apt-get update
```

2. Menginstall `isc-dhcp-server`.

```bash
apt-get install isc-dhcp-server -y
```

3. Membuat file konfigurasi `/etc/default/isc-dhcp-server` dan menetapkan interface yang digunakan DHCP Server untuk mendengar request DHCP.

```bash
cat > /etc/default/isc-dhcp-server << 'EOF'
INTERFACESv4="eth0"
EOF
```

4. Membuat file konfigurasi `/etc/dhcp/dhcpd.conf` dan menetapkan interface range pool IP yang disediakan oleh server dengan mengikuti ketentuan soal.

```bash
cat > /etc/dhcp/dhcpd.conf << 'EOF'
default-lease-time 600;
max-lease-time 7200;
authoritative;

subnet 192.229.1.0 netmask 255.255.255.0 {
    option routers 192.229.1.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.1.255;
    option domain-name-servers 192.168.122.1;
    range 192.229.1.6 192.229.1.34;
    range 192.229.1.68 192.229.1.94;
}

subnet 192.229.2.0 netmask 255.255.255.0 {
    option routers 192.229.2.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.2.255;
    option domain-name-servers 192.168.122.1;
    range 192.229.2.35 192.229.2.67;
    range 192.229.2.96 192.229.2.121;
}

subnet 192.229.3.0 netmask 255.255.255.0 {
    option routers 192.229.3.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.3.255;
    option domain-name-servers 192.168.122.1;
}

host Khamul {
    hardware ethernet 02:42:4c:b6:e5:00;
    fixed-address 192.229.3.95;
}

subnet 192.229.4.0 netmask 255.255.255.0 {
    option routers 192.229.4.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.4.255;
    option domain-name-servers 192.168.122.1;
}
EOF
```

5. Melakukan restart pada service `isc-dhcp-server`.

```bash
service isc-dhcp-server restart
```

#### • DHCP Relay

6. Memperbarui daftar package yang ada pada apt-get.

```bash
apt-get update
```

7. Menginstall `isc-dhcp-relay`.

```bash
apt-get install isc-dhcp-relay -y
```

8. Membuat file konfigurasi `/etc/default/isc-dhcp-relay` dan menetapkan alamat dari DHCP Server dan interface yang digunakan DHCP Relay untuk meneruskan request DHCP.

```bash
cat > /etc/default/isc-dhcp-relay << 'EOF'
SERVERS="192.229.4.101"
INTERFACES="eth1 eth2 eth3 eth4 eth5"
OPTIONS=""
EOF
```

9. Membuat file konfigurasi `/etc/sysctl.conf` dan menetapkan fungsi IP forwarding pada sistem.

```bash
cat > /etc/sysctl.conf << 'EOF'
net.ipv4.ip_forward=1
EOF
```

10. Memuat ulang konfigurasi sistem.

```bash
sysctl -p
```

11. Melakukan restart pada service `isc-dhcp-relay`.

```bash
service isc-dhcp-relay restart
```

<p align="justify">
&emsp; Terakhir, kita perlu memverifikasi bahwasannya client dinamis dapat menerima offer IP address dari DHCP Server dan menggunakan IP address tersebut.
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image03.png" alt="ipca" width="80%" height="80%">  
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image04.png" alt="ipcb" width="80%" height="80%">  
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image05.png" alt="ipcc" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Berdasarkan screenshot di atas, dapat disimpulkan bahwasannya client dinamis, yaitu Amandil, Gilgalad, dan Khamul berhasil mendapatkan IP address sesuai ketentuan range pool pada soal.
</p>

### • Soal 3

<blockquote>
	<ol start="3">
		<li>
			<p align="justify">
				Untuk mengontrol arus informasi ke dunia luar (Valinor/Internet), sebuah menara pengawas, Minastir didirikan. Minastir mengatur agar semua node (kecuali Durin) hanya dapat mengirim pesan ke luar Arda setelah melewati pemeriksaan di Minastir.
			</p>
		</li>
	</ol>
</blockquote>

<p align="justify">
&emsp; Untuk mengarahkan query dari node lain (kecuali Durin) ke Minastir, maka kita perlu mengkonfigurasi terlebih dahulu Minastir sebagai <b>DNS Forwarder</b>. Di mana langkah implementasinya:
</p>

1. Memperbarui daftar package yang ada pada apt-get.

```bash
apt-get update
```

2. Menginstall `dnsmasq`.

```bash
apt-get install dnsmasq -y
```

3. Membuat file konfigurasi `/etc/dnsmasq.conf` dan menetapkan Minastir sebagai DNS Forwarder, yang meliputi interface yang digunakan untuk mendengarkan query dari node lain (kecuali Durin) dan logging query yang melewati DNS Forwarder.

```bash
cat > /etc/dnsmasq.conf << 'EOF'
no-resolv
no-poll

interface=eth0
bind-interfaces
server=192.168.122.1
log-queries
log-facility=/var/log/dnsmasq.log
neg-ttl=60
cache-size=500
EOF
```

4. Memuat ulang konfigurasi sistem.

```bash
sysctl -p
```

5. Melakukan restart pada service `dnsmasq`.

```bash
service dnsmasq restart
```

<p align="justify">
&emsp; Selain itu, kita perlu mengubah konfigurasi nameserver yang ditetapkan pada DHCP Server. Di mana langkah implementasinya:
</p>

6. Memperbarui file konfigurasi `/etc/dhcp/dhcpd.conf` dan menetapkan IP address dari DNS Forwarder sebagai nameserver.

```bash
cat > /etc/dhcp/dhcpd.conf << 'EOF'
default-lease-time 600;
max-lease-time 7200;
authoritative;

subnet 192.229.1.0 netmask 255.255.255.0 {
    option routers 192.229.1.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.1.255;
    option domain-name-servers 192.229.5.101;
    range 192.229.1.6 192.229.1.34;
    range 192.229.1.68 192.229.1.94;
}

subnet 192.229.2.0 netmask 255.255.255.0 {
    option routers 192.229.2.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.2.255;
    option domain-name-servers 192.229.5.101;
    range 192.229.2.35 192.229.2.67;
    range 192.229.2.96 192.229.2.121;
}

subnet 192.229.3.0 netmask 255.255.255.0 {
    option routers 192.229.3.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.3.255;
    option domain-name-servers 192.229.5.101;
}

host Khamul {
    hardware ethernet 02:42:4c:b6:e5:00;
    fixed-address 192.229.3.95;
}

subnet 192.229.4.0 netmask 255.255.255.0 {
    option routers 192.229.4.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.4.255;
    option domain-name-servers 192.229.5.101;
}
EOF
```

7. Melakukan restart pada service `isc-dhcp-server`.

```bash
service isc-dhcp-server restart
```

<p align="justify">
&emsp; Terakhir, kita perlu memverifikasi bahwasannya semua query yang berasal dari node lain (kecuali Durin) melewati DNS Forwarder terlebih dahulu. Di mana kita dapat menggunakan command <code>nslookup</code>, dengan menggunakan <b>Aldarion</b> sebagai contoh:
</p>

```bash
nslookup google.com
```

<p align="center">
	<img src="Image-Jarkom-Modul-3/image06.png" alt="dnsf" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Berdasarkan screenshot di atas, dapat disimpulkan bahwasannya query dari Aldarion diarahkan terlebih dahulu ke DNS Forwarder, dibuktikan dengan IP address asal dari <code>nslookup</code> yang bukan menunjukkan IP dari Aldarion, melainkan IP dari DNS Forwarder (Minastir).
</p>

### • Soal 4

<blockquote>
	<ol start="4">
		<li>
			<p align="justify">
				Ratu Erendis, sang pembuat peta, menetapkan nama resmi untuk wilayah utama (&lt;xxxx&gt;.com). Ia menunjuk dirinya (ns1.&lt;xxxx&gt;.com) dan muridnya Amdir (ns2.&lt;xxxx&gt;.com) sebagai penjaga peta resmi. Setiap lokasi penting (Palantir, Elros, Pharazon, Elendil, Isildur, Anarion, Galadriel, Celeborn, Oropher) diberikan nama domain unik yang menunjuk ke lokasi fisik tanah mereka. Pastikan Amdir selalu menyalin peta (master-slave) dari Erendis dengan setia.
			</p>
		</li>
	</ol>
</blockquote>

<p align="justify">
&emsp; Sebelum dapat membuat zona DNS pada Erendis, maka langkah pertama adalah menginstall <b>Bind9</b> pada console <b>Erendis</b> terlebih dahulu. Di mana langkah implementasinya adalah:
</p>

1. Memperbarui daftar package yang ada pada apt-get.

```bash
apt-get update
```

2. Menginstall `bind9`.

```bash
apt-get install bind9 -y
```

3. Membuat link simbolik `/etc/init.d/bind9` yang merujuk ke `/etc/init.d/named`.

```bash
ln -s /etc/init.d/named /etc/init.d/bind9
```

<p align="justify">
&emsp; Kemudian setelah menginstall bind9, kita perlu melakukan konfigurasi domain terlebih dahulu pada file <code>/etc/bind/named.conf.local</code>. Di mana langkah implementasinya adalah:
</p>

4. Membuat file konfigurasi `/etc/bind/named.conf.local` dan menetapkan zona DNS `K36.com` dengan tipe `master` untuk Erendis.

```bash
cat > /etc/bind/named.conf.local <<'EOF'
zone "K36.com" {
        type master;
        file "/etc/bind/ns1/K36.com";
        allow-transfer { 192.229.3.102; };
        also-notify { 192.229.3.102; };
        notify yes;
};
EOF
```

5. Membuat direktori `/etc/bind/ns1`.

```bash
mkdir -p /etc/bind/ns1
```

6. Mengalihkan kepemilikan direktori `/etc/bind/ns1` ke user `bind`.
```bash
chown bind:bind /etc/bind/ns1
```

<p align="justify">
Langkah selanjutnya adalah membuat file zona DNS otoritatif pada Erendis, di mana ketentuannya:
	<ul>
		<li>
			Start of Authority (SOA) yang merujuk ke nama domain <code>ns1.K36.com</code>.
		</li>
		<li>
			Nameserver Record (NS) untuk nama domain <code>ns1.K36.com</code> dan <code>ns2.K36.com</code>.
		</li>
		<li>
			Address Record (A) untuk IP address dari node <b>Erendis</b> yang merujuk ke nama domain <code>ns1.K36.com</code>. 
		</li>
		<li>
			Address Record (A) untuk IP address dari node <b>Amdir</b> yang merujuk ke nama domain <code>ns2.K36.com</code>. 
		</li>
		<li>
			Address Record (A) untuk IP address dari node <b>Erendis</b> yang merujuk ke nama domain apex (@) <code>K36.com</code>. 
		</li>
		<li>
			Address Record (A) untuk IP address dari node <b>Elendil</b>, <b>Isildur</b>, <b>Anarion</b>, <b>Elros</b>, <b>Galadriel</b>, <b>Celeborn</b>, <b>Oropher</b>, <b>Pharazon</b>, dan <b>Palantir</b>. 
		</li>
	</ul>
Dengan langkah implementasinya:
</p>

7. Membuat file record zona DNS template pada `/etc/bind/zone.template`.

```bash
cat > /etc/bind/zone.template <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     localhost. root.localhost. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      localhost.
@       IN      A       127.0.0.1
EOF
```

8. Menyalin file template ke direktori `/etc/bind/ns1` dengan nama `K36.com`.

```bash
cp /etc/bind/zone.template /etc/bind/ns1/K36.com
```

9. Mengubah isi file template dan menyesuaikannya dengan ketentuan soal.

```bash
cat > /etc/bind/ns1/K36.com <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.
@       IN      NS      ns2.K36.com.

ns1         IN      A       192.229.3.101  ; IP Erendis
ns2         IN      A       192.229.3.102  ; IP Amdir
@           IN      A       192.229.3.101  ; IP Erendis

elendil     IN      A       192.229.1.101  ; IP Elendil
isildur     IN      A       192.229.1.102  ; IP Isildur
anarion     IN      A       192.229.1.103  ; IP Anarion
elros       IN      A       192.229.1.105  ; IP Elros
galadriel   IN      A       192.229.2.101  ; IP Galadriel
celeborn    IN      A       192.229.2.102  ; IP Celeborn
oropher     IN      A       192.229.2.103  ; IP Oropher
pharazon    IN      A       192.229.2.105  ; IP Pharazon
palantir    IN      A       192.229.4.102  ; IP Palantir
EOF
```

10. Mendelegasikan wewenang atas sebuah subdomain pada file `/etc/bind/named.conf.options`.

```bash
cat > /etc/bind/named.conf.options <<'EOF'
options {
    directory "/var/cache/bind";

    forwarders { };
  
    dnssec-validation no;
    listen-on-v6 { any; };
    allow-query { any; };
    auth-nxdomain no;
};                   
EOF         
```

11. Melakukan restart pada service `bind9`.

```bash
service bind9 restart
```

<p align="justify">
&emsp; Selepas itu, kita juga perlu melakukan konfigurasi pada node Amdir. Di mana langkah pertama yang perlu dilakukan adalah menginstall <b>Bind9</b> pada console <b>Amdir</b> terlebih dahulu. Dengan langkah implementasinya adalah:
</p>

14. Memperbaharui daftar package yang ada pada apt-get.

```bash
apt-get update
```

15. Menginstall `bind9`.

```bash
apt-get install bind9 -y
```

16. Membuat link simbolik `/etc/init.d/bind9` yang merujuk ke `/etc/init.d/named`.

```bash
ln -s /etc/init.d/named /etc/init.d/bind9
```

<p align="justify">
&emsp; Kemudian setelah menginstall bind9, kita perlu melakukan konfigurasi domain terlebih dahulu pada file <code>/etc/bind/named.conf.local</code>. Di mana langkah implementasinya adalah:
</p>

17. Membuat file konfigurasi `/etc/bind/named.conf.local` dan menetapkan zona DNS `K36.com` dengan tipe `slave` untuk Amdir.

```bash
cat > /etc/bind/named.conf.local <<'EOF'
zone "K36.com" {
        type slave;
        masters { 192.229.3.101; };
        file "/etc/bind/ns1/K36.com";
};
EOF
```

18. Membuat direktori `/etc/bind/ns1`.

```bash
mkdir -p /etc/bind/ns1
```

19. Mengalihkan kepemilikan direktori `/etc/bind/ns1` ke user `bind`.
```bash
chown bind:bind /etc/bind/ns1
```

20. Melakukan restart pada service `bind9`.

```bash
service bind9 restart
```

<p align="justify">
&emsp; Seterusnya, kita perlu memverifikasi bahwasannya zona <code>K36.com</code> yang ditarik dari Erendis disalin dan dijawab otoritatif oleh Valmar. Di mana kita dapat melakukannya dengan menjalankan:
</p>

```bash
dig @192.229.3.101 ns1.K36.com
dig @192.229.3.102 ns2.K36.com
```

<p align="justify">
Menggunakan Gilgalad sebagai contoh:
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image07.png" alt="ns1" width="80%" height="80%">  
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image08.png" alt="ns2" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Berdasarkan screenshot di atas, dapat disimpulkan bahwasannya Amdir berhasil menyalin zona <code>K36.com</code> dari Erendis dan memiliki hak otoritatif untuk zona tersebut. Hal ini diindikasikan pada output command <code>dig</code>, khususnya pada bagian <code>flags</code> yang menyatakan flag <code>aa</code> atau Authoritative Answer.
</p>

### • Soal 5

<blockquote>
	<ol start="5">
		<li>
			<p align="justify">
				Untuk memudahkan, nama alias www.&lt;xxxx&gt;.com dibuat untuk peta utama &lt;xxxx&gt;.com. Reverse PTR juga dibuat agar lokasi Erendis dan Amdir dapat dilacak dari alamat fisik tanahnya. Erendis juga menambahkan pesan rahasia (TXT record) pada petanya: "Cincin Sauron" yang menunjuk ke lokasi Elros, dan "Aliansi Terakhir" yang menunjuk ke lokasi Pharazon. Pastikan Amdir juga mengetahui pesan rahasia ini.
			</p>
		</li>
	</ol>
</blockquote>

<p align="justify">
&emsp; Langkah pertama adalah menambahkan Canonical Name Record (CNAME) atau suatu alias untuk nama domain <code>www.K36.com</code>. Di mana langkah implementasinya:
</p>

1. Memperbarui file `/etc/bind/ns1/K36.com` dan menambahkan klausa Canonical Name Record (CNAME) untuk nama domain `www.K36.com`:

```bash
cat > /etc/bind/ns1/K36.com <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.
@       IN      NS      ns2.K36.com.

ns1         IN      A       192.229.3.101  ; IP Erendis
ns2         IN      A       192.229.3.102  ; IP Amdir
@           IN      A       192.229.3.101  ; IP Erendis

elendil     IN      A       192.229.1.101  ; IP Elendil
isildur     IN      A       192.229.1.102  ; IP Isildur
anarion     IN      A       192.229.1.103  ; IP Anarion
elros       IN      A       192.229.1.105  ; IP Elros
galadriel   IN      A       192.229.2.101  ; IP Galadriel
celeborn    IN      A       192.229.2.102  ; IP Celeborn
oropher     IN      A       192.229.2.103  ; IP Oropher
pharazon    IN      A       192.229.2.105  ; IP Pharazon
palantir    IN      A       192.229.4.102  ; IP Palantir

www         IN      CNAME   K36.com.
EOF
```

<p align="justify">
&emsp; Selain itu, untuk dapat membuat zona Reverse DNS pada Erendis, maka langkah pertama adalah kita perlu memperbarui konfigurasi domain terlebih dahulu pada file <code>/etc/bind/named.conf.local</code>. Di mana langkah implementasinya adalah:
</p>

2. Menambahkan klausa pada file konfigurasi `/etc/bind/named.conf.local` yang menetapkan zona Reverse DNS `3.229.192.in-addr.arpa` dengan tipe `master` untuk Erendis dan mengaktifkan `notify` dan `allow-transfer` ke node **Amdir**.

```bash
cat >> /etc/bind/named.conf.local <<'EOF'

zone "3.229.192.in-addr.arpa" {
        type master;
        file "/etc/bind/ns1/3.229.192.in-addr.arpa";
        allow-transfer { 192.229.3.102; };
        also-notify { 192.229.3.102; };
        notify yes;
};
EOF
```

<p align="justify">
Langkah selanjutnya adalah membuat file zona Reverse DNS otoritatif pada Erendis, di mana ketentuannya:
	<ul>
		<li>
			Start of Authority (SOA) yang merujuk ke nama domain <code>ns1.K36.com</code>.
		</li>
		<li>
			Nameserver Record (NS) untuk nama domain <code>ns1.K36.com</code> dan <code>ns2.K36.com</code>.
		</li>
		<li>
			Pointer Record (PTR) untuk nama domain <code>ns1.K36.com</code> yang merujuk ke IP address dari node <b>Erendis</b>. 
		</li>
		<li>
			Pointer Record (PTR) untuk nama domain <code>ns2.K36.com</code> yang merujuk ke IP address dari node <b>Amdir</b>. 
		</li>
	</ul>
Dengan langkah implementasinya:
</p>

3. Menyalin file template ke direktori `/etc/bind/ns1` dengan nama `3.229.192.in-addr.arpa`.

```bash
cp /etc/bind/zone.template /etc/bind/ns1/3.229.192.in-addr.arpa
```

4. Mengubah isi file template dan menyesuaikannya dengan ketentuan soal.

```bash
cat > /etc/bind/ns1/3.229.192.in-addr.arpa <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.
@       IN      NS      ns2.K36.com.

101     IN      PTR     ns1.K36.com.
102     IN      PTR     ns2.K36.com.
EOF
```

<p align="justify">
&emsp; Langkah selanjutnya adalah menambahkan Text Record (TXT) yang berisi <code>"Cincin Sauron"</code> untuk nama domain <code>elros.K36.com</code> dan <code>"Aliansi Terakhir"</code> untuk nama domain <code>pharazon.K36.com</code>. Di mana langkah implementasinya adalah:
</p>

5. Memperbarui file `/etc/bind/ns1/K36.com` dan menambahkan klausa Text Record (TXT) untuk nama domain `elros.K36.com` dan `pharazon.K36.com`.

```bash
cat > /etc/bind/ns1/K36.com <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100402 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.
@       IN      NS      ns2.K36.com.

ns1         IN      A       192.229.3.101  ; IP Erendis
ns2         IN      A       192.229.3.102  ; IP Amdir
@           IN      A       192.229.3.101  ; IP Erendis

elendil     IN      A       192.229.1.101  ; IP Elendil
isildur     IN      A       192.229.1.102  ; IP Isildur
anarion     IN      A       192.229.1.103  ; IP Anarion
elros       IN      A       192.229.1.105  ; IP Elros
galadriel   IN      A       192.229.2.101  ; IP Galadriel
celeborn    IN      A       192.229.2.102  ; IP Celeborn
oropher     IN      A       192.229.2.103  ; IP Oropher
pharazon    IN      A       192.229.2.105  ; IP Pharazon
palantir    IN      A       192.229.4.102  ; IP Palantir

www         IN      CNAME   K36.com.

elros       IN      TXT    "Cincin Sauron"
pharazon    IN      TXT    "Aliansi Terakhir"
EOF
```

6. Memperbarui serial dari SOA file `/etc/bind/ns1/K36.com` dari yang awalnya bernilai `2025100401` menjadi `2025100402`.

7. Melakukan restart pada service `bind9`.

```bash
service bind9 restart
```

<p align="justify">
&emsp; Selain itu, kita perlu memverifikasi bahwasannya query Text (TXT) terhadap <code>elros.K36.com</code> dan <code>pharazon.K36.com</code>, serta alias untuk nama domain <code>www.K36.com</code> berhasil ter-resolve ke tujuan yang benar dan konsisten. Di mana hal ini dapat dilakukan dengan menjalankan command <code>dig</code> untuk query Text (TXT) dan command <code>host</code> untuk query Canonical Name Record (CNAME). Menggunakan <b>Gilgalad</b> sebagai contoh:
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image09.png" alt="wtxt" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Begitu pula, kita perlu memverifikasi dan memastikan bahwasannya Amdir berhasil menyalin pembaruan konfigurasi yang dilakukan pada Erendis. Di mana kita dapat menggunakan command:
</p>

```bash
dig @192.229.3.102 K36.com SOA +short
```

<p align="center">
	<img src="Image-Jarkom-Modul-3/image10.png" alt="amdr" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Berdasarkan screenshot di atas, dapat disimpulkan bahwasannya Amdir berhasil pembaruan konfigurasi yang dilakukan pada Erendis, dibuktikan dengan serial dari SOA yang telah diperbarui.
</p>

<p align="justify">
&emsp; Selepas itu, kita juga perlu memperbarui konfigurasi Reverse DNS pada node Amdir. Di mana langkah implementasinya adalah:
</p>

8. Menambahkan klausa pada file konfigurasi `/etc/bind/named.conf.local` yang menetapkan zona Reverse DNS `3.229.192.in-addr.arpa` dengan tipe `slave` untuk Amdir.

```bash
cat >> /etc/bind/named.conf.local <<'EOF'

zone "3.229.192.in-addr.arpa" {
        type slave;
        masters { 192.229.3.101; };
        file "/etc/bind/ns1/3.229.192.in-addr.arpa";
};
EOF
```

9. Melakukan restart pada service `bind9`.

```bash
service bind9 restart
```

<p align="justify">
&emsp; Setelah itu, kita perlu memastikan bahwasannya zona Reverse DNS pada Erendis dan Amdir dapat berjalan dan dihubungkan ke nama domain yang berkaitan. Di mana kita dapat menggunakan command:
</p>

```bash
host 192.229.3.101
host 192.229.3.102
```

<p align="justify">
Menggunakan <b>Gilgalad</b> sebagai contoh:
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image11.png" alt="rdns" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Juga, kita perlu memperbarui konfigurasi DNS Forwarder pada Minastir untuk menambahkan node DNS Master dan Slave beserta Reverse DNS-nya sebagai server. Di mana langkah implementasinya:  
</p>

10. Memperbarui file konfigurasi `/etc/dnsmasq.conf` dan menambahkan IP address dari `Erendis` dan `Amdir` beserta Reverse DNS-nya.

```bash
cat > /etc/dnsmasq.conf << 'EOF'
no-resolv
no-poll

interface=eth0
bind-interfaces
server=/K36.com/192.229.3.101
server=/K36.com/192.229.3.102
server=/3.229.192.in-addr.arpa/192.229.3.101
server=/3.229.192.in-addr.arpa/192.229.3.102
server=192.168.122.1
log-queries
log-facility=/var/log/dnsmasq.log
neg-ttl=60
cache-size=500
EOF
```

11. Melakukan restart pada service `dnsmasq`.

```bash
service dnsmasq restart
```

### • Soal 6

<blockquote>
	<ol start="6">
		<li>
			<p align="justify">
				Aldarion menetapkan aturan waktu peminjaman tanah. Ia mengatur:
			</p>
			<ul>
				<li>Client Dinamis Keluarga Manusia dapat meminjam tanah selama setengah jam.</li>
				<li>Client Dinamis Keluarga Peri hanya seperenam jam.</li>
				<li>Batas waktu maksimal peminjaman untuk semua adalah satu jam.</li>
			</ul>
		</li>
	</ol>
</blockquote>

<p align="justify">
&emsp; Langkah pertama adalah memperbarui file konfigurasi DHCP Server dan memperbarui jumlah alokasi lease-time. Di mana langkah implementasinya:
</p>

1. Memperbarui file konfigurasi `/etc/dhcp/dhcpd.conf` dan memperbarui jumlah alokasi lease-time untuk masing-masing subnet sesuai dengan ketentuan soal.

```bash
cat > /etc/dhcp/dhcpd.conf << 'EOF'
max-lease-time 3600;
authoritative;

subnet 192.229.1.0 netmask 255.255.255.0 {
    option routers 192.229.1.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.1.255;
    option domain-name-servers 192.229.5.101;
    default-lease-time 1800;
    range 192.229.1.6 192.229.1.34;
    range 192.229.1.68 192.229.1.94;
}

subnet 192.229.2.0 netmask 255.255.255.0 {
    option routers 192.229.2.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.2.255;
    option domain-name-servers 192.229.5.101;
    default-lease-time 600;
    range 192.229.2.35 192.229.2.67;
    range 192.229.2.96 192.229.2.121;
}

subnet 192.229.3.0 netmask 255.255.255.0 {
    option routers 192.229.3.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.3.255;
    option domain-name-servers 192.229.5.101;
}

host Khamul {
    hardware ethernet 02:42:4c:b6:e5:00;
    fixed-address 192.229.3.95;
}

subnet 192.229.4.0 netmask 255.255.255.0 {
    option routers 192.229.4.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.4.255;
    option domain-name-servers 192.229.5.101;
}
EOF
```

2. Melakukan restart pada service `isc-dhcp-server`.

```bash
service isc-dhcp-server restart
```

<p align="justify">
&emsp; Terakhir, kita perlu memastikan bahwasannya jumlah alokasi lease-time yang diberikan untuk setiap subnet sudah mengikuti ketentuan yang baru. Di mana hal ini dapat dilakukan dengan menggunakan command <code>dhcp-lease-list --list</code>:
</p>

<p align="center">
	<img src="Image-Jarkom-Modul-3/image12.png" alt="leas" width="80%" height="80%">  
</p>

<p align="justify">
&emsp; Berdasarkan screenshot di atas, dapat disimpulkan bahwasannya setiap subnet sudah mengikuti jumlah alokasi lease-time yang sesuai dengan ketentuan soal, dibuktikan dengan perbedaan waktu <code>valid until</code> dari masing-masing subnet.
</p>

### • Soal 7

<blockquote>
	<ol start="7">
		<li>
			<p align="justify">
				Para Ksatria Númenor (Elendil, Isildur, Anarion) mulai membangun benteng pertahanan digital mereka menggunakan teknologi Laravel. Instal semua tools yang dibutuhkan (php8.4, composer, nginx) dan dapatkan cetak biru benteng dari Resource-laravel di setiap node worker Laravel. Cek dengan lynx di client.
			</p>
		</li>
	</ol>
</blockquote>


### • Soal 8

<blockquote>
	<ol start="8">
		<li>
			<p align="justify">
				Setiap benteng Númenor harus terhubung ke sumber pengetahuan, Palantir. Konfigurasikan koneksi database di file .env masing-masing worker. Setiap benteng juga harus memiliki gerbang masuk yang unik; atur nginx agar Elendil mendengarkan di port 8001, Isildur di 8002, dan Anarion di 8003. Jangan lupa jalankan migrasi dan seeding awal dari Elendil. Buat agar akses web hanya bisa melalui domain nama, tidak bisa melalui ip.
			</p>
		</li>
	</ol>
</blockquote>


### • Soal 9

<blockquote>
	<ol start="9">
		<li>
			<p align="justify">
				Pastikan setiap benteng berfungsi secara mandiri. Dari dalam node client masing-masing, gunakan lynx untuk melihat halaman utama Laravel dan curl /api/airing untuk memastikan mereka bisa mengambil data dari Palantir.
		</li>
	</ol>
</blockquote>


### • Soal 10

<blockquote>
	<ol start="10">
		<li>
			<p align="justify">
				Pemimpin bijak Elros ditugaskan untuk mengkoordinasikan pertahanan Númenor. Konfigurasikan nginx di Elros untuk bertindak sebagai reverse proxy. Buat upstream bernama kesatria_numenor yang berisi alamat ketiga worker (Elendil, Isildur, Anarion). Atur agar semua permintaan yang datang ke domain elros.<xxxx>.com diteruskan secara merata menggunakan algoritma Round Robin ke backend.
			</p>
		</li>
	</ol>
</blockquote>


### • Soal 11

<blockquote>
	<ol start="11">
		<li>
			<p align="justify">
				Musuh mencoba menguji kekuatan pertahanan Númenor. Dari node client, luncurkan serangan benchmark (ab) ke elros.<xxxx>.com/api/airing/:<br>
- Serangan Awal: -n 100 -c 10 (100 permintaan, 10 bersamaan).<br>
- Serangan Penuh: -n 2000 -c 100 (2000 permintaan, 100 bersamaan). Pantau kondisi para worker dan periksa log Elros untuk melihat apakah ada worker yang kewalahan atau koneksi yang gagal.<br>
- Strategi Bertahan: Tambahkan weight dalam algoritma, kemudian catat apakah lebih baik atau tidak.
		</li>
	</ol>
</blockquote>



### • Soal 12

<blockquote>
	<ol start="12">
		<li>
			<p align="justify">
				Para Penguasa Peri (Galadriel, Celeborn, Oropher) membangun taman digital mereka menggunakan PHP. Instal nginx dan php8.4-fpm di setiap node worker PHP. Buat file index.php sederhana di /var/www/html masing-masing yang menampilkan nama hostname mereka. Buat agar akses web hanya bisa melalui domain nama, tidak bisa melalui ip.
			</p>
		</li>
	</ol>
</blockquote>


### • Soal 13

<blockquote>
	<ol start="13">
		<li>
			<p align="justify">
				Setiap taman Peri harus dapat diakses. Konfigurasikan nginx di setiap worker PHP untuk meneruskan permintaan file .php ke socket php-fpm yang sesuai. Atur agar Galadriel mendengarkan di port 8004, Celeborn di 8005, dan Oropher di 8006.
			</p>
		</li>
	</ol>
</blockquote>


### • Soal 14

<blockquote>
	<ol start="14">
		<li>
			<p align="justify">
				Keamanan adalah prioritas. Terapkan Basic HTTP Authentication pada nginx di setiap worker PHP, sehingga hanya mereka yang tahu kata sandi (user: noldor, pass: silvan) yang bisa masuk.
			</p>
		</li>
	</ol>
</blockquote>



### • Soal 15

<blockquote>
	<ol start="15">
		<li>
			<p align="justify">
				Para Peri ingin tahu siapa yang mengunjungi taman mereka. Modifikasi konfigurasi Nginx di worker PHP untuk menambahkan header X-Real-IP yang akan diteruskan ke PHP. Ubah file index.php untuk menampilkan alamat IP pengunjung asli saat ini.
			</p>
		</li>
	</ol>
</blockquote>



### • Soal 16

<blockquote>
	<ol start="16">
		<li>
			<p align="justify">
				Raja Númenor terakhir yang ambisius, Pharazon, mencoba mengawasi taman-taman Peri. Konfigurasikan Nginx di Pharazon sebagai reverse proxy. Buat upstream Kesatria_Lorien berisi alamat ketiga worker PHP. Atur agar permintaan ke pharazon.<xxxx>.com diteruskan ke backend, dan pastikan konfigurasi Nginx di Pharazon juga meneruskan informasi Basic Authentication yang dimasukkan pengguna ke worker.
			</p>
		</li>
	</ol>
</blockquote>



### • Soal 17

<blockquote>
	<ol start="17">
		<li>
			<p align="justify">
				Dari node client, lakukan benchmark ke pharazon.<xxxx>.com, jangan lupa menyertakan kredensial autentikasi. Amati distribusi beban ke para worker. Kemudian, simulasikan salah satu taman Peri runtuh (misal: service nginx stop di Galadriel) dan jalankan lagi benchmark. Apakah Pharazon masih bisa mengarahkan pengunjung ke taman yang tersisa? Periksa log Pharazon.
			</p>
		</li>
	</ol>
</blockquote>



### • Soal 18

<blockquote>
	<ol start="18">
		<li>
			<p align="justify">
				Kekuatan Palantir sangat vital. Untuk melindunginya, konfigurasikan replikasi database Master-Slave menggunakan MariaDB. Jadikan Palantir sebagai Master. Konfigurasikan Narvi sebagai Slave yang secara otomatis menyalin semua data dari Palantir. Buktikan replikasi berhasil dengan membuat tabel baru di Master dan memeriksanya di Slave.
			</p>
		</li>
	</ol>
</blockquote>





### • Soal 19

<blockquote>
	<ol start="19">
		<li>
			<p align="justify">
				Gelombang serangan dari Mordor semakin intens. Implementasikan rate limiting pada kedua Load Balancer (Elros dan Pharazon) menggunakan Nginx. Batasi agar satu alamat IP hanya bisa melakukan 10 permintaan per detik. Uji coba dengan menjalankan ab dari satu client dengan konkurensi tinggi (-c 50 atau lebih) dan periksa log Nginx untuk melihat pesan request yang ditolak atau ditunda karena rate limit.
			</p>
		</li>
	</ol>
</blockquote>



### • Soal 20

<blockquote>
	<ol start="20">
		<li>
			<p align="justify">
				Beban pada para worker semakin berat. Aktifkan Nginx Caching pada Pharazon untuk menyimpan salinan halaman PHP yang sering diakses. Gunakan curl pada domain nama Pharazon dari client untuk memeriksa response header. Buktikan bahwa permintaan kedua dan seterusnya untuk halaman yang sama mendapatkan status HIT dari cache dan tidak lagi membebani worker PHP.
			</p>
		</li>
	</ol>
</blockquote>
