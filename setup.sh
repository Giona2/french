#ensure the necessary packages are installed
sudo apt update
sudo apt upgrade
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-venv
#set up the project folder
mkdir ~/Documents/Python
mv ~/french ~/Documents/Python
mkidr ~/Documents/Python/french/venv
#set up venv
python3 -m venv ~/Documents/Python/french/venv
source ~/Documents/Python/french/venv/bin/activate
python3 -m pip install --upgrade pip
#install needed packages
source ~/Documents/Python/french/venv/bin/activate
pip install pydub
pip install SpeechRecognition
pip install sounddevice
pip install scipy
pip install wavio
echo "You Can Now Remove This Bash File!"
