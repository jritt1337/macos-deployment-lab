# macOS Workstation Deployment Lab
This lab will show a simple way to automate workstation setup using Homebrew and zsh scripting.

## Objectives
- Automate the setup of a standardized workstation
- Practice package management and shell scripting
- Demonstrate comfort with the command line.

## Operating Systems Used
- macOS

## Technologies Used
- Terminal
- Homebrew
- Zsh

## Deployment and Configuration Steps
For this project we will mainly be using Homebrew, a package manager that simplifies the installation of software on macOS operating systems. Homebrew is mainly used via a command line accessed through the macOS **Terminal** application by default. This allows software and dependencies to be quickly installed through scripted commands.

### Step 1: Installing Homebrew
Firstly, navigate to the [Homebrew website](https://brew.sh/). There are two methods available to installing Homebrew, to acclimate ourselves to the terminal, let's install it via terminal command. You should see a command you can copy to the clipboard under the **Install Homebrew** header by clicking clipboard icon to the right of it.

<img width="1171" height="787" alt="Screenshot 2026-05-18 at 9 34 19 PM copy" src="https://github.com/user-attachments/assets/917388e7-bd4b-468a-9f6e-fff37da085e3" />

Then use **Command + Spacebar** to open the Spotlight search and search for **Terminal**. Once found, select it to open the Terminal.

<img width="659" height="482" alt="Screenshot 2026-05-18 at 9 38 59 PM" src="https://github.com/user-attachments/assets/a8c3b510-ff5d-4858-8adc-5ca9c5379da7" />

In the Terminal, paste the command from the Homebrew webpage and press **Enter**. It will check for sudo access, or administrator access, after which you will input the administrator password for the machine. The terminal won't visually show your keystrokes on this step for privacy, so type carefully.

<img width="600" height="401" alt="Screenshot 2026-05-18 at 9 41 55 PM" src="https://github.com/user-attachments/assets/2471a768-2594-44b6-8998-7a0761f83871" />

Afterwards, you will be prompted to continue the installation. Press **Enter** again.

<img width="600" height="401" alt="Screenshot 2026-05-18 at 9 45 56 PM" src="https://github.com/user-attachments/assets/e38dd99a-6c72-4bf2-80ae-3d657a1ec5ae" />

Once it is done running and the command prompt has returned to default, it should be installed.

<img width="600" height="401" alt="Screenshot 2026-05-18 at 9 48 35 PM" src="https://github.com/user-attachments/assets/e197a7bc-83d3-49a9-81a7-215945c56939" />

## Step 2: Configure Brewfile

Now that Homebrew is installed, let's create our Brewfile. But first, a brief explanation on some of the Homebrew commands. There are two different commands used to install applications using Homebrew. 

The `brew` command installs command line applications such as git, neovim, anything you would run via Terminal. 

The `cask` command installs GUI-based applications such as browsers, productivity software, development tools, anything you would run via your desktop

So for example, if I wanted to install git, I would type `brew install git` into the Terminal. If I wanted to install Firefox, it would be `brew install --cask firefox`. 

When creating a Brewfile, however, the syntax differs from terminal commands. `brew install git` becomes `brew "git"` and `brew install --cask firefox` becomes `cask "firefox"`

Let's make a new directory for this file. In the Terminal, type:

`mkdir Brewlab`

This will create a folder named "Brewlab" in your home directory. To enter the folder from the command line, enter:

`cd Brewlab`

From here, let's create the Brewfile. Enter:

`touch Brewfile`

You can ensure that the file is present by entering `ls` or by navigating to the file itself from the Finder.

<img width="600" height="401" alt="Screenshot 2026-05-18 at 10 17 27 PM" src="https://github.com/user-attachments/assets/3f80c70d-7930-4a63-8afd-7ea29c6aaba5" />

Now we need to edit it. We can do that with **nano**. While within this directory, enter:

```nano Brewfile```

You should now be inside of the Nano text editor. 

<img width="600" height="401" alt="image" src="https://github.com/user-attachments/assets/37409cab-131d-440c-bba5-84910dc3df81" />

From here, we need to decide which packages we want installed. On the [Homebrew home page](https://brew.sh/), there is a search bar with which you can search for packages. 

<img width="600" height="401" alt="Screenshot 2026-05-18 at 10 26 12 PM" src="https://github.com/user-attachments/assets/aa64279a-caf5-4b03-a10e-ebacafb555a4" />

Think of a few programs or utilities you might want to find, and see if it exists within the package database. For the purposes of this lab, we're going to choose a few productivity applications:

- Brew packages
  - git
  - wget
  - tree
  - python
- Cask packages
  - google-chrome
  - visual-studio-code
  - vlc

So let's enter the following into our Brewfile

``` 
brew "git"
brew "wget"
brew "tree"
brew "python"

cask "google-chrome"
cask "visual-studio-code"
cask "vlc"
```

<img width="600" height="401" alt="Screenshot 2026-05-18 at 10 41 27 PM" src="https://github.com/user-attachments/assets/0d1a40ef-dfe1-4d58-bd0d-23bafb200272" />

Once this has been entered, you can save the file by pressing **Control + O**, and pressing enter to save as "Brewfile"

<img width="600" height="401" alt="Screenshot 2026-05-18 at 10 42 45 PM" src="https://github.com/user-attachments/assets/87d35148-6d74-4df8-a826-5d70669586b4" />


Then exit with **Control + X**. To ensure this was written into the file correctly, enter `cat Brewfile`.
<img width="600" height="401" alt="Screenshot 2026-05-18 at 10 46 49 PM" src="https://github.com/user-attachments/assets/9f558a98-de9d-409d-800d-3b59db290b23" />






