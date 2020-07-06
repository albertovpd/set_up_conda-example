
#   CREATING ENV AND POINTING KERNEL TO JUPYTER LABS
# --------------------------------
# create environment: pass env name as first positional
conda create --name $1 -y
conda install --name $1 -c anaconda ipykernel -y
python -m ipykernel install --user --name=$1
# ipykernel is to point this kernel to the jupyter
# --------------------------------

#   LIBRARIES
# --------------------------------

# basics data science
conda install --name $1 -c conda-forge jupyterlab -y
conda install --name $1 -c anaconda pandas -y
conda install --name $1 -c conda-forge matplotlib -y
conda install --name $1 -c anaconda numpy -y
conda install --name $1 -c anaconda seaborn -y
#conda install --name $1 -c anaconda scikit-learn
#conda install --name $1 -c anaconda scipy

# --------------------------------