# 安装

大多数读者的电脑上可能都已经安装了 LabVIEW，但如果还没有，可以去 NI 的官网上 [下载一个 LabVIEW 社区免费版](https://www.ni.com/en-us/shop/labview.html) 用于学习编程。下载时选择 “Community” 版本，其它版本都需要购买授权之后才能使用。社区免费版与专业版功能基本相同，只是不能用于商业用途。

下载社区免费版需要注册 NI 社区的账号，在 NI 官网的右上角处选择 “Create an Account” 就可以免费创建一个账号。软件下载安装后还需要用到这个账号进行激活。

Windows 系统下的安装和激活过程都非常直观，只要根据安装程序的提示一步一步进行即可。

对于 Linux 系统下的安装需要注意，LabVIEW 官方只支持 RedHat 家族的 Linux 发行版本。但台式机上安装的 Linux 大多属于 Debian 家族，比如 Ubuntu、Deepin 等。在 Debian 家族的系统上安装 LabVIEW，需要先把安装包里的 .rpm 文件全部转换为 .deb 才可以。具体步骤如下：
首先安装用于转换安装包的工具 alien：
```sh
sudo apt-get install alien
```

然后把下载的 LabVIEW 安装包解压缩，在解压缩后的文件夹路径下运行如下命令把所有 .rpm 安装包文件转换为 .deb 格式安装包。有一些 rpm 安装包是给 32 位系统的，可能无法转换，把所有名字中带有 “i386” 的文件删除即可。

```sh
sudo alien *.rpm --scripts
```

最后，运行下面的命令安装所有的 deb 安装包：

```sh
sudo dpkg -i *.deb
```

LabVIEW 会被安装到文件夹`/usr/local/natinst/LabVIEW-20xx-64`下（把 xx 替换成对应的版本）。 运行这个文件夹下`./labviewprofull` 命令即可启动 LabVIEW。

LabVIEW 安装包自带的系统程序启动菜单项可能也不适合 Debian：

![images_2/image18.png](images_2/image18.png "Linux 系统的开始菜单")

Linux 系统启动菜单项被保存在文件夹 `/usr/share/applications/` 下，这里会看到一个 labview64-20xx.desktop 文件。如果遇到了问题，可以用文本编辑器打开这个文件，把键值 Exec 修改成：`Exec=/usr/local/natinst/LabVIEW-2021-64/labviewprofull % u`。这样就可以使用系统启动菜单启动 LabVIEW 了。


Debian 不是 LabVIEW 官方支持的系统，可能会遇到某些问题并且无法得到官方解决方案。所以如果是用于项目开发，请务必选用官方支持的操作系统。但是对于学习来说，越是折腾越有利于拓宽知识面。

LabVIEW 2021 启动后的画面如下，可以选择新建或是打开已有的文件：

![images_2/w_20211203094255.png](images_2/w_20211203094255.png "LabVIEW 启动画面")

如果选择新建，LabVIEW 会提供一些模板以便快速开始一个项目：

![images_2/w_20211203093945.png](images_2/w_20211203093945.png "创建新项目或 VI")
