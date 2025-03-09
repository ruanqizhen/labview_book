# Install

Many readers likely have LabVIEW installed on their computers, but for those who don’t, NI offers a free Community Edition of LabVIEW, perfect for learning programming. This edition can be downloaded from NI’s [official website](https://www.ni.com/en-us/shop/labview.html). When downloading, choose the “Community” version, as other versions require a paid license. The Community Edition includes nearly all the features of the professional version, except it cannot be used commercially.

To download the Community Edition, you’ll need to register for an NI Community account. This can be done for free by selecting “Create an Account” in the top right corner of NI’s official website. This account is also required to activate the software after installation.

On Windows systems, installation and activation are straightforward: simply follow the prompts provided by the installation wizard.

For Linux users, note that LabVIEW officially supports only specific distributions. If your distribution is supported, installation is straightforward: simply run the INSTALL script in the installation directory. For unsupported distributions, such as Mint or Deepin, manual installation is still possible. First, determine your Linux family. Debian-family systems use .deb files from the installation package, while Red Hat-family systems use .rpm files. If the package lacks .deb files, you’ll need to convert the .rpm files to .deb format.

The conversion requires installing the 'alien' package conversion tool:

```sh
sudo apt-get install alien
```

Next, unzip the downloaded LabVIEW installation package. Within the unzipped folder’s rpm subfolder, run the following command to convert all .rpm files to .deb format. Some RPM packages are for 32-bit systems and may not convert; simply delete any files with “i386” in their names.

```sh
sudo alien *.rpm --scripts
```

Finally, run the following command to install all the .deb packages:

```sh
sudo dpkg -i *.deb
```

LabVIEW will be installed in the folder `/usr/local/natinst/LabVIEW-20xx-64` (replace xx with the corresponding version number). You can start LabVIEW by running the `./labviewcommunity` command in this folder.

The system program start menu item included with the LabVIEW installation package might not be compatible with some Debian systems:

![images_2/image18.png](../../../../docs/images_2/image18.png "Linux system program start menu")

tart menu items on Linux are stored in the `/usr/share/applications/` folder, where you will find a file named `labview64-20xx.desktop`. If you encounter any issues, you can open this file with a text editor and modify the Exec key value to: `Exec=/usr/local/natinst/LabVIEW-2021-64/labviewcommunity %F`. This modification will allow you to launch LabVIEW using the system start menu.

For commercial project development, it's crucial to choose an officially supported operating system. However, for learning purposes, the more you tinker, the broader your knowledge base becomes.

The LabVIEW 2021 startup screen looks like this, offering options to create a new file or open existing ones:

![images_2/w_20211203094255.png](../../../../docs/images_2/w_20211203094255.png "LabVIEW startup screen")

If you choose to start a new project, LabVIEW provides several templates to help you begin quickly:

![images_2/w_20211203093945.png](../../../../docs/images_2/w_20211203093945.png "start a new project or VI")
