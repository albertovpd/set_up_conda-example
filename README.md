# Automating setups

There are 2 scripts:
- *linux_progams.sh* just executes the commands to install the programs.
- *setup.sh* creates a conda environment with the wanted python version and libraries.

---------------------------

## Install Miniconda and wanted libraries in windows/linux.
<details>
  <summary>Click to expand</summary>

--------------------------------

**For windows:**

This repository is meant to create your Conda virtual environment with the packages you need. If you have already everything installed to run Conda, VScode and WSL, just navigate to ths folder:

```
bash setup.sh <name_for_the_environment> <python_version_like_3.8.2> 
```

If not, configurations have to be made.

------------------------------------------


## WSL and VSCode
<details>
  <summary>Click to expand</summary>

- Linux terminal (ubuntu SO works great) => https://docs.microsoft.com/en-us/windows/wsl/install

- run as administrator the powershell and write 

```
wsl –install
```

TROUBLESHOOTING
- Run as administrator

```
wsl.exe --update
wsl –shutdown (it forces reboot)
```

- Reboot the system
- Once rebooted, the ubuntu shell will prompt asking for a new user and password. If not prompted => https://docs.microsoft.com/en-us/windows/wsl/setup/environment#set-up-your-linux-username-and-password

- Download VSCode
- configure Linux terminal to work with VSCode 
  - https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode
  - https://docs.microsoft.com/en-us/windows/wsl/setup/environment


- Run the following commands in the powershell:
```		
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
```		
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```


</details>

--------------------------

## Preparing Conda (virtual environment)

<details>
  <summary>Click to expand</summary>

### Conda.

```
sudo apt-get update
```

If you can't run it, do the following:

- Install this conda distribution

```
wget https://repo.anaconda.com/miniconda/Miniconda3-4.7.12.1-Linux-x86_64.sh
```

Configure some .conda scripts:
- Create wsl.conf
			
```
Cd /etc
Sudo touch wsl.conf
Sudo nano wsl.conf
```				
- Write inside the following:
			
```      
[network]
generateResolvConf = false
```

- Create resolv.conf
			
```
sudo nano /etc/resolv.conf
```
				
- Overwrite the inside with

```
nameserver 8.8.8.8
```
				
- *block* that file
```
sudo chattr -f +i /etc/resolv.conf
```
			
- Restart wsl with ```wsl --shutdown```
- Wait for a few seconds (15-30) as WSL takes some time to restart. Then, for running it again, just run: ```wsl```
- Activate Conda

```		
Sudo apt-get update
Conda activate
```

- Add the conda-forge source
		
```
conda config --add channels conda-forge
```


### Clone the respository.

**Disclaimer**: if you can't maybe is that you need writing permissions on that folder. That can be changed as follows:
  - Navigate above the folder in which you want to clone the repo. In the terminal:

```
ls
``` 

(you should see the folder)

```
Chown –R <linux_user>:<linux_user data_folder/>
```			
	
		
</details>

-------------------------------------



-----------------------------------



</details>

---------------------------------------------------

## Creating a Conda Environment with a wanted name.

For Linux, just install the lastest MiniConda version from the official website. For Windows, follow the required steps above. Once done:

- Navigate to this folder and activate Conda base:

```
conda activate
bash setup.sh <name_for_the_environment> <python_version_like_3.8.2> 
```

- Follow the instructions

### Configuring the installed libraries.

- Check available environments: ```conda env list```
- Activate environment

```
conda activate <nameofyourenv>
```



-------------------------------------

-------------------------------------

**About me:** 

<details>
  <summary>Click to expand</summary>



![alt](pics/woof-bark-bark-dog-graph.jpg)

-----------------------------------------------------------------

</details>

-------------------------------------

-------------------------------------