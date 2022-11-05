CALL .\venv\Scripts\activate
CALL pip install pyinstaller
cd install
CALL pyinstaller --collect-all TTS --collect-data trainer --collect-data librosa --collect-binaries torchaudio --collect-data gruut --collect-data unidic_lite --collect-all pycrfsuite --collect-data jamo --hidden-import torchaudio.lib.libtorchaudio --hidden-import MeCab --collect-all MeCab --add-data "espeak;TTS\tts\utils\text\phonemizers\espeak" -F --noconfirm tts_server_wrapper/tts_server_wrapper.py
