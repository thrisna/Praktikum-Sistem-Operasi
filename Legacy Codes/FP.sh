#!/bin/bash
lagi='y'

while  [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do

   clear
   echo "=========================================";
   echo "    PROGRAM PEMESANAN TIKET PESAWAT     ";
   echo "           BANDARA SUKA DUKA      "
   echo "=========================================";
   echo "1. PEMESANAN TIKET     ";
   echo "2. LIHAT DATA TERAKHIR PEMESANAN ";
   echo "3. KELUAR       ";
   echo "=========================================";
   read -p "Pilihan anda [1-3] :" pil;
   echo "=========================================";

case $pil in 1)

    clear;       

       echo "====================================";
       echo "====================================";
       echo "        MENU HARGA TIKET ";
       echo "====================================";
       echo "====================================";
       
       echo "1. SURABAYA-JAKARTA    RP 100.000";
       echo "2. SURABAYA-BALI       RP 100.000";
       echo "3. SURABAYA-ACEH       RP 150.000";
       echo "4. SURABAYA-PAPUA      RP 80.000";
       echo "5. JAKARTA-SINGAPORE   RP 800.000";
       echo "6. JAKARTA-MALAYSIA    RP 800.000";
       echo "7. JAKARTA-JEPANG      RP 1.000.000";   
       echo "8. BALI-SURABAYA       RP 100.000";
       echo "9. BALI-JOGJA          RP 125.000";
       echo "10.BALI-JAKARTA        RP 150.000";
       echo "11.BALI-PAPUA          RP 80.000";
       echo "12.JAKARTA-SURABAYA    RP 100.000";
       echo "13.JAKARTA-BALI        RP 150.000";
       

       echo "===================================="; 
       echo "====================================";
       echo -n "Masukan nama anda                 :";
       read nama 
       echo -n "Masukan alamat anda               :";
       read alamat
       echo -n "Masukan nomor tiket (1-13)    :";
       read jenis
       echo -n "Masukan jumlah tiket yang di pesan : "
       read jum
       echo "====================================";
       echo "====================================";


    
       if [ $jenis -eq 1 ];    then kelas="SURABAYA-JAKARTA";
       tiket=100000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 2 ]; then kelas="SURABAYA-BALI";
       tiket=100000;
       let total=jum*tiket; 

    
       elif [ $jenis -eq 3 ]; then kelas="SURABAYA-ACEH";
       tiket=150000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 4 ]; then kelas="SURABAYA-PAPUA";
       tiket=80000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 5 ]; then kelas="JAKARTA-SINGAPORE";
       tiket=800000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 6 ]; then kelas="JAKARTA-MALAYSIA";
       tiket=800000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 7 ]; then kelas="JAKARTA-JEPANG";
       tiket=1000000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 8 ]; then kelas="BALI-SURABAYA";
       tiket=100000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 9 ];    then kelas="BALI-JOGJA";
       tiket=125000;
       let total=jum*tiket;


       elif [ $jenis -eq 10 ];    then kelas="BALI-JAKARTA";
       tiket=150000;
       let total=jum*tiket;


       elif [ $jenis -eq 11 ];    then kelas="BALI-PAPUA";
       tiket=80000;
       let total=jum*tiket;


       elif [ $jenis -eq 12 ];    then kelas="JAKARTA-SURABAYA";
       tiket=100000;
       let total=jum*tiket;


       elif [ $jenis -eq 13 ];    then kelas="JAKARTA-BALI";
       tiket=150000;
       let total=jum*tiket;


       else
       echo "Maaf, inputan yang anda masukkan tidak tersedia"
       exit 1

       fi

;; 


2)

       clear;

       echo "DATA PEMBELI TIKET";
       echo "====================================";
       echo "====================================";
       echo "NAMA        : $nama";
       echo "ALAMAT      : $alamat";
       echo "KELAS       : $kelas";
       echo "JUMLAH      : $jum";
       echo "====================================";
       echo "====================================";
       echo "TOTAL BAYAR : $total";
       echo "====================================";
       echo "====================================";
       echo

;;

3)
  echo
  echo
  echo "TERIMA KASIH TELAH BERKUNJUNG"
 echo "====================================";
      
  echo "SEMOGA HARI ANDA MENYENANGKAN"
 echo "====================================";
      
  echo "PESAN TIKET? DI SUKA DUKA AJA"
 echo "====================================";
      
  echo "  \/\/\/\/\/\/\/\/\/\/\/\/\/\/"
 echo "====================================";
      
  exit 1

;;

*)

       echo "Maaf, tidak tersedia"
       exit 1

;;

esac

echo -n "Yakin dengan pesanan anda? jika iya tekan(y) kembali ke menu awal, tekan (t) untuk keluar (y/t) :";
read lagi;

done