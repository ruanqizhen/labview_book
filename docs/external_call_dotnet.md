# .NET 和 EXE

## .NET
.NET
Framework 是微软提供的一套软件开发平台。目前市面上已有大量的基于.NET 架构的控件和服务供用户选择。在 LabVIEW 中可以很方便地使用这些控件和服务，使用它们的方法与使用 ActiveX 对象的方法极为类似。因此本章也不再重复详细阐述了，仅举一最简单的例子。

.NET 库中也有网页浏览控件。在 VI 的前面板上放置一个.NET 容器，然后插入 "System.Windows.Forms" 程序集中的 "WebBrowser" 控件（图
5.26）。

![](images/image385.png)

图 .26 选择网页浏览.NET 控件

然后调用它的 "Navigate" 方法，即可浏览一个网页（图 5.27）。

![](images/image386.png)

图 .27 浏览网页

## EXE

借助 "互联接口 -\> 库与可执行程序 -\> 执行系统命令"VI，可以在 LabVIEW 程序中调用另一个应用程序。这个 VI 通过命令行的方式打开 LabVIEW 之外的某个应用程序或系统命令，比如在 LabVIEW 中打开网页浏览器软件去浏览某个网页，打开记事本显示某个文本文件等。

图 5.28 中的例子是在 LabVIEW 中打开记事本软件的程序框图。

![](images/image387.png)

图 .28 调用其它应用程序

其它使用执行系统命令的示例可参考 "\[LabVIEW\]\\examples\\comm" 目录中的 Calling
System Exec VI。