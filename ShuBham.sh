#!/bin/bash
clear
echo -e "\e[4;31m ShuBham Productions !!! \e[0m"
echo -e "\e[1;34m Presents  \e[0m"
echo -e "\e[1;32m SMSbomber \e[0m"
echo "Press Enter To Continue"
read a1
if [[ -s update.ShuBham ]];then
echo "All Requirements Found...."
else
echo 'Installing Requirements....'
echo .
echo .
apt install figlet toilet python curl -y
apt install python3-pip
pip install -r requirements.txt
echo This Script Was Made By ShuBham >update.ShuBham
echo Requirements Installed....
echo Press Enter To Continue...
clear
echo -e "\e[1;31m"
figlet SMSbomber
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border ShuBham
echo -e "\e[4;34m This Bomber Was Created By shubhamggosai \e[0m"
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m  Mail: sgosain18122001@gmail.com \e[0m"
echo " "
echo -e "\e[4;31m Please Read Instruction Carefully !!! \e[0m"
echo " "
echo "Press 1 To  Start SMS Bomber "
echo "Press 2 To  Start Call Bomber "
echo "Press 3 To  Update (Works On Linux And Linux Emulators) "
echo "Press 4 To  View Features "
echo "Press 5 To  Exit "
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python bomber.py
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
echo 'Call Bomb By ShuBham'> call.xxx
python bomber.py 
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 3 ];then
clear
apt install git -y
echo -e "\e[1;34m Downloading Latest Files..."
git clone https://github.com/shubhamggosai/SMSbomber
if [[ -s ShuBham/ShuBham.sh ]];then
cd SMSbomber
cp -r -f * .. > temp
cd ..
rm -rf  SMSbomber >> temp
rm update.SMSbomber>> temp
rm temp
chmod +x ShuBham.sh
fi
echo -e "\e[1;32m SMSbomber Will Restart Now..."
echo -e "\e[1;32m All The Required Packages Will Be Installed..."
echo -e "\e[1;34m Press Enter To Proceed To Restart..."
read a6
./ShuBham.sh
exit
elif [ $ch -eq 4 ];then
clear
echo -e "\e[1;33m"
figlet SMSbomber
echo -e "\e[1;34mCreated By \e[1;34m"
toilet -f mono12 -F border shubhamggosai
echo  " "
echo ""
echo ""
echo -e "\e[1;31m This Script is Only For Educational Purposes or To Prank.\e[0m"
echo -e "\e[1;31m Do not Use This To Harm Others. \e[0m"
echo -e "\e[1;31m I Am Not Responsible For The Misuse Of The Script. \e[0m"
echo -e "\e[1;32m Make Sure To Update it If It Does not Work.\e[0m"
echo  " "
echo -e "\e[4;31m That's All !!!\e[0m"
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: sgosain18122001@mail.com \e[0m"
echo "Press Enter To Go Home"
read a3
clear
elif [ $ch -eq 5 ];then
clear
echo -e "\e[1;31m"
figlet SMSbomber
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border ShuBham
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: sgosain18122001@mail.com \e[0m"
exit 0
else
echo -e "\e[4;32m Invalid Input !!! \e[0m"
echo "Press Enter To Go Home"
read a3
clear
fi
done
