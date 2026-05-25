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

### Step 2: Configure Brewfile

Now that Homebrew is installed, let's create our Brewfile. But first, a brief explanation on some of the Homebrew commands. There are two different commands used to install applications using Homebrew. 

The `brew` command installs command line applications such as git, wget, python, anything you would run via Terminal. 

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

Think of a few programs or utilities you might want to find, and see if it exists within the package database. For the purposes of this lab, we're going to choose a few development and productivity applications:

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
cask "slack"
```

<img width="580" height="389" alt="Screenshot 2026-05-24 at 9 06 33 PM" src="https://github.com/user-attachments/assets/547642a4-32e2-4a06-9ccc-6162699422d8" />

Once this has been entered, you can save the file by pressing **Control + O**, and pressing enter to save as "Brewfile"

<img width="580" height="389" alt="Screenshot 2026-05-24 at 9 08 50 PM" src="https://github.com/user-attachments/assets/18f5a967-3a6b-42b3-aa1e-bc7d49d652c3" />

Then exit with **Control + X**. To ensure this was written into the file correctly, enter `cat Brewfile` into the Terminal.

<img width="580" height="389" alt="Screenshot 2026-05-24 at 9 07 49 PM" src="https://github.com/user-attachments/assets/2f21efbc-2c02-4e01-ae9f-069036110e40" />

### Step 3: Testing the Brewfile

Now that we have what we want in the Brewfile, let's test it out to make sure it works.

From the Brewlab directory, enter:

```brew bundle```

Homebrew will read the Brewfile and begin installing the packages contained within. You may be asked to enter an administrator password and depending on your connection speed and the size of the packages, this may take a few minutes. The command prompt will notify you whenever the installation is complete.

<img width="586" height="440" alt="Screenshot 2026-05-20 at 10 45 23 AM" src="https://github.com/user-attachments/assets/39cf2317-aaa9-449b-b898-1db51fdfcbbf" />

To verify everything was installed, you can check the list of installed packages by typing:

``` brew list ```

<img width="580" height="389" alt="Screenshot 2026-05-24 at 9 17 47 PM" src="https://github.com/user-attachments/assets/36e61eae-b179-46a4-bb17-c8f97ca4a915" />

As you can see, I have other packages installed here as well, but the packages within the Brewfile are all installed. However, let's suppose I wanted to carry everything over from this list to another machine? We'll handle that in the next step.

### Step 4: Generating a Brewfile to Deploy Across Multiple Systems

So if we want to generate a Brewfile that we can carry over to other systems, we can generate it using:

``` brew bundle dump --force ```

This will generate a Brewfile from the installed packages on the current system. After running this command, you can verify by again running ` cat Brewfile ` to view the contents of the Brewfile.

<img width="691" height="737" alt="Screenshot 2026-05-24 at 9 44 11 PM" src="https://github.com/user-attachments/assets/8bee6391-9402-4519-82dc-be31b9e83f34" />



## Step 5: Automating Deployment

Now we've installed Homebrew, created a Brewfile, and installed a list of packages from the Brewfile. We've also learned how to generate a Brewfile to copy across multiple systems. Now, let's set up a script to do all of this automatically.

In the Brewlab directory, enter:

``` nano mac-setup.sh ```

<img width="580" height="389" alt="Screenshot 2026-05-24 at 9 23 55 PM" src="https://github.com/user-attachments/assets/db9ea6f8-aa6d-4357-8bb3-40d58fb4d1ca" />

Then enter the following:

```zsh
#!/bin/zsh

echo "Starting Deployment..."

mkdir -p ~/Brewlab

cd ~/Brewlab

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not detected. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Configure shell environment
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    if ! command -v brew >/dev/null 2>&1; then
        echo "Homebrew installation failed."
        exit 1
    fi
    echo "Homebrew installed successfully"
fi

# Download latest Brewfile
echo "Downloading Brewfile..."
# Replace the URL with a link to your own Brewfile if you wish to use your own!
BREWFILE_URL="https://raw.githubusercontent.com/jritt1337/macos-deployment-lab/main/Brewfile"

if ! curl -L -f -o Brewfile "$BREWFILE_URL"; then
    echo "Brewfile download failed."
    exit 1
fi

echo "Brewfile downloaded!"

echo "Updating Homebrew..."
brew update

echo "Installing packages..."
brew bundle --file=./Brewfile

echo "Cleaning old files..."
brew cleanup

echo "Deployment complete!" 
```

This will do a few things:
- Create a directory called Brewlab within the user's home directory, and then change to it.
- Check if Homebrew is installed. If not, installs Homebrew and sets it up.
- Downloads a Brewfile. This script points it to the one included with the lab.
- Installs the packages from the Brewfile.
- Cleans up old files

Save using **Control + O** and exit Nano with **Control + X** .

Before running the script, we need to make it executable. Within the Brewlab directory, enter:

``` chmod +x mac-setup.sh ```

<img width="580" height="389" alt="Screenshot 2026-05-24 at 9 29 46 PM" src="https://github.com/user-attachments/assets/4269bf66-dd04-4661-a82d-973baf016be9" />

Then, execute the script with:

``` ./mac-setup.sh ```

<img width="691" height="609" alt="Screenshot 2026-05-24 at 9 31 26 PM" src="https://github.com/user-attachments/assets/9647c70c-6945-471b-8667-aeb9235c1485" />

Now we have a script that we can copy to another macOS machine, and simply run to have everything automated.

## Conclusion

This lab demonstrated how Homebrew can be used to automate workstation setup through package management and scripting. We installed Homebrew, created and deployed a Brewfile, generated reusable configurations, and built a script capable of automating the process across multiple macOS systems.








