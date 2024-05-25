@echo off

py -3.10 -m venv venv

call venv/scripts/activate

py -m pip install --upgrade pip

pip install torch==2.1.1+cu118 torchaudio==2.1.1+cu118 --index-url https://download.pytorch.org/whl/cu118
pip install -r .\requirements.txt

python xtts_demo.py