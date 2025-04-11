#!/bin/bash

clear
figlet "REDZ TOOL" | lolcat
echo "By: King REDZ 😈" | lolcat
echo "===========================" | lolcat
echo "1. Spam WhatsApp"
echo "2. Auto Login Gmail (Simulasi)"
echo "3. Cek Lokasi dari Nomor WA"
echo "4. Scan IP & Port Web"
echo "5. Exit"
echo "===========================" | lolcat
read -p "Pilih opsi bro 👉 " pilih

if [ $pilih = 1 ]; then
   git clone https://github.com/siputra12/prank
   cd prank
   python2 wa.py

elif [ $pilih = 2 ]; then
   echo "⚠️ Auto login Gmail tidak didukung karena batasan keamanan Google."
   read -p "Email: " email
   read -p "Password: " pass
   echo "Trying to login as $email ..."
   sleep 2
   echo "Gagal login, 2FA aktif ❌"
   exit

elif [ $pilih = 3 ]; then
   git clone https://github.com/thewhiteh4t/seeker
   cd seeker
   bash install.sh
   python3 seeker.py

elif [ $pilih = 4 ]; then
   read -p "Masukkan IP/web target: " target
   nmap -v -A $target

elif [ $pilih = 5 ]; then
   echo "See you bro 👋😎"
   exit
else
   echo "Pilihan salah bro 😵"
   exit
fi
