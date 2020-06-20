# Setting up your new brand Linux machine (and/or Conda Environment)

Once you have installed your Linux version, it is time to install all the programs you need, and Conda environment (in case you use it)... And this is terribly tiring and boring, so, instead of doing everything manually, just run bash scripts. 

All senior workers know this, but talking with colleagues I realized it is not that common, so here I leave a basic example of installing your linux programs at once, creating a conda environment, copy a txt of your libraries and import it in a new environment, install just the libraries you want... You can copy, fork, update, whatever.



More or less what I need to start working: Installing conda, libraries, jupyter-lab, pointing conda kernels to jupyter, libraries for specific environments...

There are .txt scripts to create rightaway the env, o sh with the install commands. I prefer the 2nd, with the just important libraries, and always up to date (unless the command itself is deprecated)

# Ubuntu programs.

There are more efficient ways, but just running the script with the sudo apt-get install commands you can get all programs installed at once. Go to the cloned folder and run:

        bash linux_programs.sh 

- If you do not want to install all programs, just write **#** before the command.

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

# Python libraries and environments.

- Install Miniconda => https://docs.conda.io/en/latest/miniconda.html

- Download it and bash <namefile> in the downloader folder.

- Creating a Conda Environment and installing Python libraries:

        bash all_libraries.sh

    - In this script is already written how to create the environment, install the wanted libraries and use this Conda kernel on Jupyter Notebooks.

    - If you do not want a library written there just **#** that line. 

    - Never put sensitive information of your pc configurations in a repo.



# Advise:

- It is considered *good development practises* to specify the Python version you want to install in the new environment, and also specifying the *main* library in the command line. Just check out the Conda documentation, it is very user-friendly.

- Managing/creating new envs => https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html

If you have an already working computer and you want to clone all your libraries from one pc to another, here is the logical solution (I am literally copypasting the Conda docs)

- Saving libraries in a .txt:

        conda list. # List all packages installed into the environment 'myenv'
        
        conda list -n myenv # Save packages for future use
        
        conda list --export > package-list.txt # Reinstall packages from an export file

In fact this is the right way of doing things, instead of writing bash commands in  a bash script.


- Creating a new env with the .txt libraries

        conda create -n myenv --file package-list.txt.

I know all this is very  basic, but I really think it can be helpful for some people :) 

![alt](pics/woof-bark-bark-dog-graph.jpg)