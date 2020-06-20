
#   CREATING ENV AND POINTING KERNEL TO JUPYTER LABS
# --------------------------------
# create environment: Modify <ENVNAME>
conda create --name <ENVNAME>
conda install -c anaconda ipykernel 
python -m ipykernel install --user --name=<ENVNAME>
# ipykernel is to point this kernel to the jupyter
# --------------------------------


#   LIBRARIES
# --------------------------------

# basics data science
conda install -c conda-forge jupyterlab
conda install -c anaconda pandas
conda install -c conda-forge matplotlib
conda install -c anaconda numpy
conda install -c seaborn
#conda install -c anaconda scikit-learn
#conda install -c anaconda scipy

# --------------------------------