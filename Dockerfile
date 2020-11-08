FROM pytorch/pytorch:latest

# Update aptitude with new repo
RUN apt-get update

# Install software 
RUN apt-get install -y git

RUN git clone https://github.com/OPHoperHPO/image-background-remove-tool && \
cd image-background-remove-tool && \
pip install -r requirements.txt && \
cd ./tools && \
echo "all" | python setup.py
