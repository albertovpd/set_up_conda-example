# Install Miniconda in windows/linux.

<details>
  <summary>Click to expand</summary>


- Install Miniconda => https://docs.conda.io/en/latest/miniconda.html
- Restart the PC.
- If you're on Windows, after restarting, open the Anaconda Prompt and paste (for using basic Linux commands):

                conda install m2-base

Now, for Linux/Windows users:

- Download this repository, go to that folder through conda terminal.
- Take a glance to *all_libraries.sh* script. Write there all the libraries you want to use.
- Think a name for your future Conda environment. Copy the code below and change *<ENV_NAME>* for your desired one.  

                bash all_libraries.sh <ENV_NAME>
                
This will create a compartmentalized environment with the libraries written in *all_libraries.sh*. To use it, in the Conda promt, **conda activate** will initialize it.

**Disclamier: ** Sometimes in Windows I have to re-run manually some of the libraries written in *all_libraries.sh*. If you don't find your environment in *jupyter-lab*, re-run the command.

### Advice:

<details>
  <summary>Click to expand</summary>


- It is considered *good development practices* to specify the Python version you want to install in the new environment, and also specifying the *main library* in the command line. Just check out the Conda documentation, it is very user-friendly.

- Managing/creating new envs => https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html

If you have an already working computer and you want to clone all your libraries from one pc to another, here is the solution (I am literally copypasting the Conda docs)

- Saving libraries in a *.txt*. Activate your env and run:

        conda list. # List all packages installed into the environment 'myenv'
        
        conda list -n myenv # Save packages for future use
        
        conda list --export > package-list.txt # Reinstall packages from an export file


- Creating a new env with the .txt libraries:

        conda create -n <ENVNAME> --file package-list.txt.

-----------------------------------------------------------------

</details>

-----------------------------------------------------------------

</details>

---------------------------------------------------

# Setting up your new brand Linux machine (and/or Conda Environment)

<details>
  <summary>Click to expand</summary>

Once you have installed your Linux version, it is time to install all the programs you need, and Conda environment (in case you use it)... And this is terribly tiring and boring, so, instead of doing everything manually, just run bash scripts. 

All senior workers know this, but talking with colleagues I realized it is not that common, so here I leave a basic example of installing your linux programs at once, creating a conda environment, coping a .txt of your libraries and import it in a new environment or installing just the libraries you want.



More or less what I need to start working: Installing **Conda** *(Miniconda)*, libraries, **Jupyter-Labs**, **adding Conda environments to Jupyter-Labs**/Notebooks, libraries for specific environments...

You can make a copy of your current environment in a *.txt* file and use it to create a new env, or you can write commands in a *.sh* file. I prefer the 2nd one because it feels cleaner, I am installing just what I am sure I need (sometimes we install more than we need just testing libraries). Other way is using *conda list* or *pip freeze* to check all installed libraries and select the important ones.

# Ubuntu programs.

There are more efficient ways, but just running the script with the sudo apt-get install commands you can get all programs installed at once. Go to the cloned folder and run:

        bash linux_programs.sh 

The bash script includes:

- git
- Terminator # Terminal that can be divided in as many windows as you want.
- code # visual studio code
- chromium
- Spotify
- krita # image editor
- usb-creator-gtk # Startup Disk Creator
- Ubuntu-Tweaks         # (I like window buttons in the left)

If you do not want to install a concrete program, just **#** that line. Also you can add all you want.



<details>
  <summary>Click to expand</summary>

-----------------------------------------------------------------

</details>

# Useful VSCode extensions:

<details>
  <summary>Click to expand</summary>


Go to VSCode, then ctrl+P and copy the extensions:

- PDF reader

        ext install tomoki1207.pdf

- Grammar spelling

        ext install streetsidesoftware.code-spell-checker

- Colors for checking parenthesis (awesome)

        ext install CoenraadS.bracket-pair-colorizer-2

- Preview CSVs

        ext install GrapeCity.gc-excelviewer

- Write math formulas in markdown

        ext install goessner.mdmath

All this is basic knowledge, nevertheless I realised not everybody know/do it, so maybe it can be helpful.

<details>
  <summary>Click to expand</summary>

-----------------------------------------------------------------

</details>

-------------------------------------

-------------------------------------


<details>
  <summary>Click to expand</summary>



![alt](pics/woof-bark-bark-dog-graph.jpg)

-----------------------------------------------------------------

</details>

-------------------------------------

-------------------------------------