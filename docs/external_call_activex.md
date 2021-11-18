# ActiveX

## ActiveX控件

提起ActiveX，一般是指基于标准COM接口来实现对象连接与嵌入的ActiveX控件。ActiveX控件最早是针对微软的Internet
Explorer设计的。通过定义容器（调用ActiveX控件的程序）和组件（ActiveX控件）之间的接口规范，用户可以很方便地在多种容器中使用Active控件，而不必修改控件的代码。ActiveX控件使得网页通过脚本和控件交互，产生更加丰富的效果。

后来，ActiveX规范被更广泛地应用到了各种软件领域。越来越多的软件采用了这一规范，并制作出了大量功能丰富的ActiveX控件。使用LabVIEW来制作一个ActiveX控件也许理论上可行，但操作起来非常麻烦，至今还未看到有人这样做过。然而，在LabVIEW中使用ActiveX控件却是相当方便的。通过使用ActiveX控件，可以非常方便地为程序添加诸如网页浏览、Flash动画播放等功能。

本书的目的主要是介绍LabVIEW语言，有关ActiveX的规范及其控件的内容可以参考有关书籍。假如仅仅作为ActiveX控件的使用者，那就用不着去详细学习ActiveX的规范，只要知道需要用到的控件有哪些方法属性，并且会实际使用就可以了。

## 使用ActiveX控件

使用ActiveX控件首先需要在VI的前面板上创建一个ActiveX容器，该控件在控件选板"新式-\>容器"中。在ActiveX容器控件的右键菜单中选择"插入ActiveX对象"，LabVIEW即会列出所有的可被使用的ActiveX控件（图
5.8）。

![](images/image366.png)

图 .8选择ActiveX对象

选中一个控件，就可以把它放置在VI前面板上的ActiveX容器中了。但是，并非所有在"选择ActiveX对象"对话框中列出的ActiveX控件都可以直接在LabVIEW中使用。有些ActiveX控件是有版权的，需要得到它的生产厂家的授权后，才可以使用。

### 浏览网页

LabVIEW自身并没有提供上网浏览网页的控件，但是它可以利用IE提供的ActiveX控件浏览网页。使用网页浏览ActiveX控件，首先要在VI的前面板上放置一个ActiveX容器，然后插入"Microsoft
Web Browser"控件。

在新版的LabVIEW中，已经把一些常用的ActiveX控件和.NET控件放置在了控件选板上（位于".NET与ActiveX"控件选板），它包括网页浏览控件、Windows
Media Player等，可以直接选择使用（图
5.9）。（这些控件是由其它公司提供的ActiveX和.NET控件，并不是由LabVIEW提供的。）

![](images/image367.png)

图 .9使用ActiveX的控件选板

需要浏览网页时，调用"WebBroser"控件的"Navigate"方法就可以了（图 5.10）。

![](images/image368.png)

图 .10调用浏览器控件的"浏览"方法

运行调用了"Navigate"方法的程序，被浏览的网页就会出现在页面上（图
5.11）。

![](images/image369.png)

图 .11浏览网页的界面

这里需要注意的是，ActiveX控件通常都提供了大量的属性和方法。如果想了解这些属性和方法的使用，需要查看这个ActiveX控件的帮助文档。如果无法找到相关文档，可以联系ActiveX控件的生产厂家以寻求帮助。

### 播放mp3音乐

Windows Media Player
ActiveX控件具有媒体播放的功能。如果程序需要播放mp3或视频等，可以使用这一个控件（图
5.12、图 5.13）。

![](images/image370.png)

图 .12使用Windows Media Player ActiveX控件的VI前面板

![](images/image371.png)

图 .13实现媒体播放的程序框图

### 播放Flash动画

如果需要播放Flash动画，可以选择"Shockwave Flash
Object"控件，然后播出指定的swf文件（图 5.14）。 "Shockwave Flash
Object"控件并没有直接出现在".NET与ActiveX"控件选板上。所以使用时，首先要在VI前面板上放置一个"ActiveX容器"控件，然后为其选择插入"Shockwave
Flash Object"对象。新安装了操作系统的干净机器上可能不带有"Shockwave
Flash Object"ActiveX控件，这个控件包含在"Adobe Flash
Player"软件的安装包中。使用这个控件，需要先安装"Adobe Flash
Player"软件。

![](images/image372.png)

图 .14播放Flash动画

## ActiveX控件的事件

ActiveX控件除了属性和方法之外，还可能会产生一些事件。以"Microsoft
Toolbar
Control"（工具条）控件为例，当用户点击工具条上的按钮时，它会产生一个"Button
Click"事件。

LabVIEW的事件结构无法捕获这些事件，但是可以通过回调VI（专门用于处理这个事件的VI）的形式来处理这些事件。此时，需要使用函数选板中的"互联接口-\>ActiveX-\>事件回调注册"节点来注册ActiveX事件的回调VI。

事件回调注册节点有三个输入参数："事件"、"VI引用"和"用户参数"。在使用这个节点时，首先需要把ActiveX控件传递给"事件"参数，然后在这个参数的下拉框中选取需要处理的事件。比如，我们需要处理的是"Toolbar"控件的"ButtonClick"事件（图
5.15）。

![](images/image373.png)

图 .15选择ActiveX的事件

选取了事件之后，就要考虑是否需要传递某些用户参数。用户参数可以是任何打算传递给回调VI的数据，但用户参数不是必需的。

在我们的示例中，打算实现这样的功能，在"Toolbar"控件产生"ButtonClick"后，它的回调VI抛出一个对应的LabVIEW用户自定义事件，以便在主程序的循环事件结构中处理相关的事件。因此，我们需要把用户自定义事件相关的引用传递给回调VI，所以这里的用户参数就是这个用户自定义事件。

设置好用户参数，鼠标右键点击"VI引用"参数，即可为这个事件创建一个回调VI（图
5.16）。

![](images/image374.png)

图 .16创建回调VI

新创建出的回调VI没有任何程序代码，但是，事件相关的输入参数已经被放置在VI上了，它们包括："事件通用数据"、"控件引用"、"事件数据"和"用户参数"（图
5.17）。

![](images/image375.png)
![](images/image376.png)

图 .17刚创建的回调VI的前面板与框图

事件数据是ActiveX控件产生事件时，同事件一起发出的数据。在"Toolbar"控件产生"ButtonClick"事件时，它同时发出的数据是按钮的引用。通过这个按钮的引用，我们可以得到按钮的相关信息，比如我们在程序中需要用到的按钮的"Key（标签）"。

我们的回调VI所要做的工作，就是得到被点击的按钮，然后抛出一个以按钮标签为名的LabVIEW用户自定义事件（图
5.18）。程序中未使用到的输入参数也不能删除，仍旧保留在框图中即可。

![](images/image377.png)

图 .18事件处理程序

经过这个简单的回调函数的处理，ActiveX控件的事件，被转换成了LabVIEW的用户自定义事件。这样，就可以在主程序的循环事件结构中添加相关的处理代码了（图
5.19）。

![](images/image378.png)

图 .19主程序中处理Stop按钮被按下的分支

## ActiveX文档

Microsoft
Office等软件提供的服务，可以让它们的文档通过ActiveX容器在其它应用程序中显示出来。这样的文档就是ActiveX文档。在LabVIEW中的ActiveX容器中，除了插入控件，也可以插入ActiveX文档，比如选择插入一个图表文档（图
5.20）。

![](images/image379.png)

图 .20插入图表ActiveX文档

与ActiveX控件不同，ActiveX文档不能通过LabVIEW程序来修改。在ActiveX文档的鼠标右键上选择"编辑对象"，文档相关的编辑器就会被打开（比如Microsoft
Office），必须通过这个编辑器来编辑相关的文档（图 5.21）。

![](images/image380.png)

图 .21图表ActiveX文档的编辑器

编辑好了的ActiveX文档的效果如图 5.22所示。

![](images/image381.png)

图 .22使用图表ActiveX文档

## ActiveX自动化

ActiveX在广义上是指微软公司的整个COM架构。LabVIEW可以通过ActiveX自动化来调用那些基于COM架构提供出来的、而又没有对应的ActiveX控件的服务。

由于没有对应的控件，LabVIEW就不能直接从控件得到这个ActiveX对象的引用。因此，需要使用"互联接口-\>ActiveX-\>打开自动化"函数来创建一个ActiveX对象并得到它的引用。使用这个函数时，需要为创建的ActiveX对象指定类型：首先把打开自动化拖到程序框图上，然后为其"自动化引用句柄"输入创建一个常量，再用右键点击创建出来的常量，为其选择ActiveX类（图
5.23）。

![](images/image382.png)

图 .23创建ActiveX对象

假如我们需要使用微软提供的文本朗读服务，我们需要选择ActiveX对象对话框中，选择"Microsoft
Speech Object Library"类型库，再选择"ISpeehVoice"对象（图 5.24）。

![](images/image383.png)

图 .24选择ActiveX对象对话框

这样，我们就创建了一个ActiveX对象。在后续的程序中可以使用属性节点和调用节点来设置ActiveX对象的属性或调用方法。调用"ISpeehVoice"的"Speak"方法，可以让计算机把一段文本朗读出来。例如，运行图
5.25中的程序，可以让计算机读出"I love LabVIEW!"这句话。

![](images/image384.png)

图 .25朗读文本