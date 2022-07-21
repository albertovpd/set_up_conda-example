# create environment: pass env name as first positional, python version as 2nd positional
conda create --name $1 python=$2 -y

sudo apt-get update
sudo apt-get upgrade
sudo apt install python3 pip


# --------------------------------
#   LIBRARIES
# --------------------------------

# basics analytics
conda install -c anaconda pandas
conda install -c anaconda numpy

conda install -c conda-forge matplotlib
conda install -c anaconda seaborn

conda install -c anaconda scipy
#conda install -c anaconda scikit-learn
#conda install -c conda-forge pyclustering 


# terraform
# https://www.terraform.io/downloads
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update 
sudo apt install terraform

# --------------------------------

# jupyter-lab
conda install -c conda-forge jupyterlab
# ipykernel is to point this kernel to the jupyter
conda install --name $1 -c anaconda ipykernel -y
python -m ipykernel install --user --name=$1


# vscode extensions
code --install-extension 4ops.terraform
code --install-extension redhat.vscode-yaml@1.8.0
code --install-extension streetsidesoftware.code-spell-checker@2.3.0
