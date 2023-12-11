from pydub import AudioSegment
import speech_recognition as sr
from subprocess import run
import sounddevice as sd
from scipy.io.wavfile import write
import wavio as wv

r = sr.Recognizer()


def output_text_from_audio_file(path_to_audio_file):
    audio_file = path_to_audio_file
    sound = AudioSegment.from_file(audio_file)
    sound.export('recording.wav', format='wav')
    converted_audio = sr.AudioFile('recording.wav')
    with converted_audio as source:
        audio = r.record(source)
    return r.recognize_google(audio)


freq = 44100
duration = 3
recording = sd.rec(int(duration * freq), samplerate=freq, channels=2)
sd.wait()
write('recording.wav', freq, recording)

print(output_text_from_audio_file('recording.wav'))
run(['rm', 'recording.wav'])
