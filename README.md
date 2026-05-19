# macos-deployment-lab
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

Now that Homebrew is installed, let's create our Brewfile. But first, a brief explanation on some of the homebrew commands. There are two different commands used to install applications using Homebrew. 

The `brew` command installs command line applications such as git, neovim, anything you would run via Terminal. 

The `cask` command installs GUI-based applications such as browsers, productivity software, development tools, anything you would run via your desktop

So for example, if I wanted to install git, I would type `brew git` into the Terminal. If I wanted to install Firefox, it would be `cask firefox`. 

When creating a Brewfile, however, it is important to keep in mind the syntax needed for the command to work differs in that the package needs to be within quotations. So `brew "git"` for example. Let's get started on the Brewfile.

Let's make a new directory for this file. In the Terminal, type:

`mkdir Brewlab`




