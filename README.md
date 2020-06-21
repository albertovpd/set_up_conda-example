# Setting up your new brand Linux machine (and/or Conda Environment)

Once you have installed your Linux version, it is time to install all the programs you need, and Conda environment (in case you use it)... And this is terribly tiring and boring, so, instead of doing everything manually, just run bash scripts. 

All senior workers know this, but talking with colleagues I realized it is not that common, so here I leave a basic example of installing your linux programs at once, creating a conda environment, copy a txt of your libraries and import it in a new environment, install just the libraries you want.



More or less what I need to start working: Installing **conda** *(miniconda)*, libraries, **jupyter-lab**, **pointing conda kernels to jupyter**, libraries for specific environments...

You can make a copy of your current environment in a *.txt* file and use it to create a new env, or you can write commands in a *.sh* file. I prefer the 2nd one because it feels cleaner, I am installing just what I am sure I need.

# Ubuntu programs.

There are more efficient ways, but just running the script with the sudo apt-get install commands you can get all programs installed at once. Go to the cloned folder and run:

        bash linux_programs.sh 

- If you do not want to install a concrete program, just write **#** before the command.


# Python libraries and environments.

- Install Miniconda => https://docs.conda.io/en/latest/miniconda.html

- Download it and bash <namefile> in the downloader folder.

- Creating a Conda Environment and installing Python libraries:

        bash all_libraries.sh

    - In *all_libraries.sh* is already written how to **create the environment**, install the wanted libraries and **use this Conda kernel on Jupyter Notebooks**. Check it out and **do not forget** to change the environment name, called in the script <ENVNAME>.

    - If you do not want a concrete library just **#** that line. 

    - Never put sensitive information of your pc configurations/credentials in a repo.


# Advise:

- It is considered *good development practices* to specify the Python version you want to install in the new environment, and also specifying the *main library* in the command line. Just check out the Conda documentation, it is very user-friendly.

- Managing/creating new envs => https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html

If you have an already working computer and you want to clone all your libraries from one pc to another, here is the solution (I am literally copypasting the Conda docs)

- Saving libraries in a *.txt*. Activate your env and run:

        conda list. # List all packages installed into the environment 'myenv'
        
        conda list -n myenv # Save packages for future use
        
        conda list --export > package-list.txt # Reinstall packages from an export file


- Creating a new env with the .txt libraries:

        conda create -n <ENVNAME> --file package-list.txt.


# Useful VSCode extensions:

Go to VSCode, then ctrl+P and copy the extensions:

- PDF reader

        ext install tomoki1207.pdf

- Grammar spelling

        ext install streetsidesoftware.code-spell-checker

- Colors for checking parenthesis (awesome)

        ext install CoenraadS.bracket-pair-colorizer-2

- Preview CSVs

        ext install GrapeCity.gc-excelviewer

All this is basic knowledge, nevertheless I realised not everybody know/do it, so maybe it can be helpful.


-------------------------------------

-------------------------------------

![alt](pics/woof-bark-bark-dog-graph.jpg)


-------------------------------------

-------------------------------------