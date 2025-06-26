# ROS-Dev-Container-Environment

The ROS Developer Container Environment allows for ease of installing & setting up ROS within a local development environment. This repository is meant to be used with VSCode as the IDE since Dev-Container is an extension that is supported by VSCode. Another benefit of using this repository is to allow ROS developers to fork this repo and use it for their own development needs as a way to reduce the unnecessary stress of installing and setting up dependencies on multiple machines, nodes, and platforms. With a container based approach, development becomes more defined around what is necessary rather than focusing on the smaller details that can significantly affect performance and reduce operations uptime. 

# Summary Note 
That doesn't necessarily mean that the developers of ROS will not change anything to make this become unusable (GPG keys and other components may be affected depending on the developer/community goals). However, it would be less likely for a standarized platform to have as many issues with such a big following.

# Installation & Setup
The installation process will go through at least a basic overview to get this system operational. It doesn't mean it will contain all of the necessary information for some of your issues, just the steps to get you through the setup process.


1. Install the necessary software
    - You first need to install docker (Windows, Mac, or Linux)
        - Docker: https://www.docker.com/get-started/
        - Docker Desktop (Windows Only)
    - You need to install VSCode (Windows, Mac, or Linux)
        - VSCode: https://code.visualstudio.com/
        - Get Started: https://code.visualstudio.com/docs/getstarted/getting-started
2. In VSCode install required extensions:
    - Note: Inside of this ROS Dev-Container I have a few extensions associated with the `devcontainer.json` file
    - !Warning! Be careful downloading extensions in VSCode, some of them may be misleading and can be in fact malware/viruses
    - Docker
        - Author: Docker
        - For `Dockerfiles` and other associated docker based syntax
    - Dev Container
        - Author: Microsoft
        - For building and running `devcontainer.json` environments into your workspace
    - C/C++ (optional)
        - Author: Microsoft
        - For anything related to localized development in `C/C++`
3. Run Workspace in Container
    - Note: This is where depending on if you made chagnes to the configuration or if any of the required software systems made changes themselves
    - Press `CTL+SHIFT+P` to open up a window in the top center portion of VSCode
    - Then type & select the `Dev Containers: Reopen in Container` (or at least some portion of it) option
    - Press `Enter` and then the VSCode software will build your localized environment

# Custom Scripts
There are a few scripts that I have added to the repository so that you can easily manage and setup your installation and building operations using the ROS framework. All of our scripts are in the `scripts/` directory. Inside of that directory there are a few scripts that are used to layout whatever requirements that need to be done to make sure that your install & build process goes smoothly. Without this it can become combersome to remember build orders for larger and more complex packages with a lot of dependencies. To reduce the issues, it is important to have a `pre_build_script.sh` and `build.sh` script to make the build process run smoothly. You need to come up with a build strategy depending on the needs of your own workspace. You can also clean up your environment (`cleanup.sh`) if you run into any trouble building or just want to clean up and rebuild the workspace.


```bash
# Prebuild Workspace
sh script/prebuild.sh

# Build Workspace
sh script/build.sh

# Clean Workspace (Optional)
sh script/cleanup.sh
```

# License
To be determined...

# Support
We cannot support this repo yet...

# Contact
- Author: Joshua Calzadillas
- Email: jmc1241@usnh.edu

# Tutorials (associated with installation & beyond)
The purpose of the tutorials is to assist with any knowledge that may be missed based on other factors. Hopefully this helps. I will not update this. Good luck...

## VSCode
Extension Marketplace (step 2): 
- https://code.visualstudio.com/docs/configure/extensions/extension-marketplace
- https://code.visualstudio.com/docs/configure/extensions/extension-runtime-security (Security!!!!)

Source Control:
- https://code.visualstudio.com/docs/sourcecontrol/overview

Integrated Terminal:
- https://code.visualstudio.com/docs/terminal/getting-started

CMake Tools:
- https://github.com/microsoft/vscode-cmake-tools/blob/main/docs/README.md

## Docker
What is it?:
- https://docs.docker.com/get-started/docker-overview/

Introduction:
- https://docs.docker.com/get-started/introduction/

Concepts:
- https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/ (What is a container)

Building Images (Very Important Here!):
- https://docs.docker.com/get-started/docker-concepts/building-images/

## ROS
TODO