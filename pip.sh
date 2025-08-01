# Install the pytorch version for your cuda version.
pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu118
pip install --upgrade setuptools cython wheel
pip install -r requirements.txt

pip install pre-commit
pre-commit install
