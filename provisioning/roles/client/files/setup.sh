#!/bin/bash

# Download and install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_23.5.2-0-Linux-x86_64.sh -O /tmp/install-miniconda.sh
chmod +x /tmp/install-miniconda.sh
/tmp/install-miniconda.sh -b -u -p /opt/miniconda3
rm /tmp/install-miniconda.sh

# Add Miniconda bin directory to PATH
echo 'export PATH=/opt/miniconda3/bin:$PATH' >> /etc/profile

# Set permissions
chmod -R +r /opt/miniconda3
chmod -R +x /opt/miniconda3/bin

# Install sslstrip
git clone https://github.com/moxie0/sslstrip.git /home/client/sslstrip/

# Activate conda and create the sslstrip environment
. /opt/miniconda3/bin/activate
conda create -n sslstrip python=2.7 service_identity pyOpenSSL Twisted
conda activate sslstrip

# Run sslstrip setup.py
cd /home/client/sslstrip/
python2 setup.py install
