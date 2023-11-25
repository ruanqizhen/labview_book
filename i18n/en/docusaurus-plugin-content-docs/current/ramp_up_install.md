# Install

Many readers likely have LabVIEW already installed on their computers, but for those who don't, NI offers a free community edition of LabVIEW, ideal for programming studies. This edition can be downloaded from NI's [official website](https://www.ni.com/en-us/shop/labview.html). When downloading, select the “Community” version, as the other versions necessitate a purchased license. The community edition boasts almost the same features as the professional version, with the key exception being its restriction against commercial use.

To download the community edition, you'll need to register for an NI community account. This can be done at no cost by choosing “Create an Account” on the top right of the NI official website. This account is also required for activating the software post-installation.

On Windows systems, installation and activation are straightforward; simply follow the prompts provided by the installation wizard.

For Linux users, it's important to recognize that LabVIEW officially supports only certain Linux distributions. If your Linux distribution is officially supported, installation can be done easily by running the INSTALL script located in the installation directory. For those using unsupported Linux distributions, like Mint or Deepin (the system running on my computer), manual installation is still possible. Start by identifying which Linux family your system belongs to. Debian family systems use .deb files from the installation package, while RedHat family systems require .rpm files. If the installation package lacks .deb files, you'll need to convert the .rpm files into .deb format. 

The conversion can be done by first installing the 'alien' package conversion tool:

```sh
sudo apt-get install alien
```

Then, unzip the downloaded LabVIEW installation package. In the unzipped folder path (in the rpm subfolder), run the following command to convert all .rpm package files into .deb format. Some rpm packages are for 32-bit systems and might not be convertible; simply delete all files with “i386” in their names.

```sh
sudo alien *.rpm --scripts
```

Finally, run the following command to install all the deb packages:

```sh
sudo dpkg -i *.deb
```

LabVIEW will be installed in the folder `/usr/local/natinst/LabVIEW-20xx-64` (replace xx with the corresponding version number). You can start LabVIEW by running the `./labviewcommunity` command in this folder.

The system program start menu item that comes with the LabVIEW installation package might not be suitable for some Debian system:

![images_2/image18.png](../../../../docs/images_2/image18.png "Linux 系统的开始菜单")

Linux system start menu items are saved in the `/usr/share/applications/` folder, where you will find a file named `labview64-20xx.desktop`. If you encounter any issues, you can open this file with a text editor and modify the Exec key value to: `Exec=/usr/local/natinst/LabVIEW-2021-64/labviewcommunity %F`. This modification will allow you to launch LabVIEW using the system start menu.

For commercial project development, it's crucial to choose an officially supported operating system. However, for learning purposes, the more you tinker, the broader your knowledge base becomes.

The startup screen of LabVIEW 2021 looks like this, offering options to create new or open existing files:

![images_2/w_20211203094255.png](../../../../docs/images_2/w_20211203094255.png "LabVIEW 启动画面")

If you choose to create new, LabVIEW provides several templates for quickly starting a project:

![images_2/w_20211203093945.png](../../../../docs/images_2/w_20211203093945.png "创建新项目或 VI")