
#   CREATING ENV AND POINTING KERNEL TO JUPYTER LABS
# --------------------------------
# create environment: pass env name as first positional
conda create --name $1 -y


# --------------------------------
#   LIBRARIES
# --------------------------------

# basics data science
#conda install -c conda-forge jupyterlab
conda install -c anaconda pandas
conda install -c anaconda numpy

conda install -c conda-forge matplotlib
conda install -c anaconda seaborn

conda install -c anaconda scipy
#conda install -c anaconda scikit-learn
#conda install -c conda-forge pyclustering 



# ML Washington course
#pip install --upgrade --no-cache-dir https://get.graphlab.com/GraphLab-Create/2.1/a.vargas.pina@gmail.com/B6A0-F344-E10A-9719-A70D-7CEF-2D08-DA00/GraphLab-Create-License.tar.gz
#pip install turicreate
# --------------------------------

# Google cloud uploads
 #conda install -c conda-forge gcsfs 

# --------------------------------

# jupyter-lab
# ipykernel is to point this kernel to the jupyter
conda install --name $1 -c anaconda ipykernel -y
python -m ipykernel install --user --name=$1
