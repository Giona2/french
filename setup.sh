mkdir ~/Documents/Python
mv ~/french ~/Documents/Python
mkidr ~/Documents/Python/french/venv
python -m venv ~/Documents/Python/french/venv
source ~/Documents/Python/french/venv/bin/activate
python -m pip install --upgrade pip
pip install pydub
pip install SpeechRecognition
pip install sounddevice
pip install scipy
pip install wavio
echo "You Can Now Remove This Bash File!"
