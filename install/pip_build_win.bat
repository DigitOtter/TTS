CALL python -m venv venv
CALL .\venv\Scripts\activate
CALL pip install wheel
CALL pip install .
CALL pip install torch==1.11.0 torchvision==0.12.0 torchaudio==0.11.0

