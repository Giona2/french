#ensure the necessary packages are installed
sudo apt update
sudo apt upgrade
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-venv
sudo apt-get install flac
sudo apt-get install portaudio19-dev
#set up the project folder
mkdir /home/jonah/Documents/Python
mv /home/jonah/french /home/jonah/Documents/Python
mkdir /home/jonah/Documents/Python/french/venv
cd /home/jonah/Documents/Python/french/
#set up venv
python3 -m venv venv
. "venv/bin/activate"
python3 -m pip install --upgrade pip
#install needed packages
pip install PyAudio
pip install pydub
pip install SpeechRecognition
pip install sounddevice
pip install scipy
pip install wavio
echo "You Can Now Remove This Bash File!"
