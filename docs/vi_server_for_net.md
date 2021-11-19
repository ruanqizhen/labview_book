# 网络服务

VI服务器的功能还可以通过TCP/IP协议提供。因此，通过VI
Scripting，我们还可以控制或修改另一台计算机上的VI。使用VI服务器网络服务功能时，实施控制的计算机和远端计算机都需要在LabVIEW的设置对话框中，选中TCP/IP协议。并且，远端计算机需要设置允许实施控制的计算机的IP进行访问。

我们以一个简单的例子来说明VI服务器的网络服务功能。图
6.41是一个在远端计算机上打开的VI的程序框图。它的功能是得到远端计算机的操作系统信息。

![](images/image441.png)

图 .41远端计算机上VI的程序框图

在控制计算机上，可以通过程序来调用这个VI，让它在远端计算机上运行，并返回结果。这一过程与在本地计算机上动态调用一个VI的方法类似。唯一的差别是，在打开VI引用之前，首先要使用"打开应用程序引用"函数连接到远端计算机（图
6.42）。

![](images/image442.png)

图 .42动态调用其它计算机上VI的程序框图

# ActiveX接口

VI服务器提供的另一种接口协议是ActiveX服务。ActiveX接口主要供其它语言来调用VI服务器的服务。例如，某一测试的主程序是使用文本语言编写的，但其中某一项任务是用LabVIEW编写的。在文本语言中可以通过ActiveX协议运行LabVIEW的VI，并传递参数。

下面的程序是使用VB
Script编写的一段代码。这段代码实现了打开一个VI的前面板并运行它的功能。

```vb
Set lvapp = CreateObject("LabVIEW.Application")
Set vi = lvapp.GetVIReference("C:\temp\test.vi")
vi.FPWinOpen = True
vi.Run
```

由于IE支持VB
Script，这段代码还可以嵌在HTML文件中实现这样的功能：页面上有一处超链接指向一个VI，点击这个链接，就可以打开相应的VI。其他浏览器使用JavaScript也可以实现类似的功能。
