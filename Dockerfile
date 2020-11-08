FROM python:3

WORKDIR /usr/src/app

RUN git clone https://github.com/OPHoperHPO/image-background-remove-tool && \
cd image-background-remove-tool && pip install -r requirements.txt && \
./setup.sh


