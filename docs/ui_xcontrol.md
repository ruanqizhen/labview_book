# XControl

这一节将详细介绍 XControl 的制作方法。为了便于讲解，将以 “[界面设计实例](ui_cases.md)” 中提到的棋盘为主要例子，介绍如何制作一个 XControl 控件。在讲解 XControl 的某些特殊功能时，也会介绍一些其它的例子。

## 设计

XControl 的主要特点是可以把它的界面元素与相关的代码封装在一起，从而便于发布和重用这些界面组件。但是 XControl 也有不足之处，它的开发难度较大。此外，不合理的 XControl 可能导致程序出现更严重的问题，比如导致程序界面死锁等。所以，在开发 XControl 之前，一定要精心设计它的结构和行为，以避免出现错误。

在开发一个新的界面组件之前，首先要考虑一下以何种方式实现这个组件。

如果一个界面组件极为特殊，且只可能用在某个特定的程序中，那也许就没有必要将其制作成单独的控件了。可以把这个界面组件做成一个独立的子界面 VI，然后通过子面板控件调用这个界面。

如果这个组件需要被多次使用，那么就应该考虑把它做成可重用的独立控件。如果这个控件不包含任何特殊行为，比如一个新型按钮，仅其外观与一般的按钮不同，其它行为都与传统的按钮一模一样。这样的控件适合制作成用户自定义控件。

如果新的组件需要重用，其行为与已有的其它控件又有较大差别，那么就要考虑使用 XControl 了。比如：需要制作一个新按钮，它比传统按钮多一个状态；制作带有动画效果的控件；制作使用中国本土度量单位的数值类控件；制作一个专用于绘制某种特殊曲线的图片控件等。它们都比较适合使用 XControl 来开发。

前面提到的黑白棋的控件，它既有特殊界面，又有特殊行为，又可以应用于不同软件中，它就非常适合做成 XControl。

首先要具体设计这个 XControl 所需的界面和行为。

它的界面部分可以直接利用[界面设计实例](ui_cases.md)一节中设计好的界面。在前文提到的几个设计方案中，使用图片下拉列表数组控件的解决方案，编程代码最简单。所以，在设计 XControl 时就采用这个界面方案。

XControl 在程序框图上的接线端的输入输出数据应该是应用程序中最经常需要与 XControl 交互的数据。本例中，应用程序最常使用的数据是棋盘的布局信息。因此，这个 XControl 的输入输出数据应当是一个表示棋盘上棋子的布局的 8×8 的整型数组。

黑白棋控件的属性应当包括：当前该下什么颜色的子、可落子的位置、盘面上每种颜色的子数、上次落子的位置等。

它的方法应当包括：落下一个棋子的方法。这个方法需要包含以下具体的操作：在新位置放置一个棋子；翻转被吃掉的棋子；更新数据和所有属性的值。

还有，当用户在交互界面上摆放下一个子之后，需要发送一个事件通知应用程序。

## 创建

在项目浏览器上，点击鼠标右键，选择 "新建 -\>XControl"，就可以创建一个新的 XControl：

![](images/image748.png "创建新 XControl")

XControl 在结构上是一种特殊的库。它包含一些特定的功能 VI，和一些可选的属性、方法 VI 及其它相关文件。在新建的 XControl 上已经包含了 4 个必须的功能 VI（控件）："数据"（Data）、"状态"（State）、"外观"（Façade）、以及 "初始化"（Init）。XControl 还有两个可选的功能 VI："反初始化" 和 "转换状态以保存"。

数据功能控件：用来定义 XControl 的数据类型；

状态功能控件：定义除数据功能之外所有 XControl 内部使用到的数据；

外观功能 VI：XControl 中最主要的功能 VI，用以实现 XControl 的界面和界面上的行为；

初始化功能 VI：设置 XControl 的初始状态；

反初始化功能 VI：负责清理工作，从内存中删除 XControl 时，释放所有分配给该 XControl 的资源；

转换状态以保存功能 VI：用于把 XControl 内部的某些数据保存在使用它的 VI 中。

反初始化功能 VI 和转换状态以保存功能 VI 在新创建的 XControl 中不存在。如果需要使用到它们，可以在项目浏览窗口的 XControl 上点击鼠标右键，选 "新建 -\> 功能"，为 XControl 添加一个功能 VI。

XControl 被保存在一个.xctl 文件中。它与 LabVIEW 库文件十分相似，可以把它看作是一种特殊的 LabVIEW 库文件。它的属性设置与 LabVIEW 库的设置也一模一样：

![](images/image749.png "XControl 属性设置")

先把这个新创建出来的 XControl 存盘。XControl 功能 VI 的文件名并不一定与其功能名相同。比如，在这个演示中，为了方便更多人使用，可以选择使用英文名称来保存 XControl：

![](images/image750.png "保存好的空白 XControl")

需要注意：XControl 的功能 VI 由 LabVIEW 系统调用，并具有预设的输入输出接口。我们在编写 XControl 的时候一定不要改变它们的输入输出控件，以及接线端的布局。我们也不可以直接在其它的 VI 中直接调用这些功能 VI。XControl 开发者需要做的只是填充功能 VI 所需的程序代码。功能 VI 之间的数据无法直接传递，也不应该使用全局变量，只可以通过由功能控件定义的“数据”和“状态”来传递。


## "数据" 功能控件

XControl 有两个功能控件。"数据"：用于定义 XControl 的数据类型；"状态"：用于定义 XControl 使用到的内部数据的数据类型。

首先考虑 "数据" 功能控件，它是一个.ctl 自定义类型文件。它所定义的数据类型，就是 XControl 控件实例在程序框图上的接线端的数据类型。在这个例子中，使用一个二维的 U16 数组表示棋盘布局，所以在数据功能控件中要使用一个二维数组：

![](images/image751.png "“数据”功能控件")


## "状态" 功能控件

"状态" 功能控件也是一个自定义类型控件，它是一个簇控件。簇中包含了用于定义 XControl 运行所需的全部变量。

下图显示的就是运行一个黑白棋 XControl 所需的内部数据。

![](images/image752.png "“状态”功能控件")

它包含以下几部分：

method：用于定义 XControl 的方法。当用户运行一个 XControl 的某种方法时，设置 method 变量。每个 XControl 方法为 method 变量设置不同的值，这样，在 XControl 的 "外观" 功能 VI 中，就可以知道用户调用的是什么方法了。

current color：用于表明当前应该落什么颜色的棋子，是白色还是黑色。

available black
position：这是一个二维整数数组，表示黑色棋子可以放置的位置。

available white position：一个二维整数数组，表示白色棋子可以放置的位置。

Interactive
Action：是一个用户自定义事件。当用户在棋盘上落下一棋子时，XControl 就产生这个事件，通知应用程序，用户走子了。

row 和 column：两个整数，用于记录上次落子的位置。

前文只是简短介绍一下每个数据表示的含义。在后文中使用到它们的时候，还会详细解释它们的内容和使用方法。实际在编写 XControl 的时候，也许不可能在一开始就把 "状态" 功能控件设计得十分完美。可以一边实现 XControl 的各种功能，一边对其进行补充。

## "外观" 功能 VI

"外观" 功能 VI 是 XControl 最主要的功能 VI，它定义了 XControl 的外观和行为。

### 界面

"外观" 功能 VI 的前面板用于定义 XControl 的界面，这里可以直接使用在[界面设计实例](ui_cases#改进界面的实现方法)一节已经设计好的界面。把前文设计好的棋盘棋子界面拷贝过来就可以了。这个 "外观" 功能 VI 窗口的大小，就是以后用户把 XControl 控件拖拽到 VI 前面板上后，XControl 实例控件显示出的大小。所以这个 VI 的大小要刚好包裹住棋盘：

![](images/image753.png "外观功能 VI 的前面板")

如果希望制作好的 XControl 在用户 VI 前面板上被使用时，可以被任意调整大小，"外观" 功能 VI 前面板上的控件都应该随着前面板的尺寸自动改变大小。

比如，下图是一个 XControl"外观" 功能 VI 的前面板，它的大小就是这个 XControl 被放到另一个 VI 上之后的初始大小：

![](images/image754.png)

下图是正在使用了这个 XControl 的实例控件的 VI，用户可能会拖动 XControl 的实例控件来改变它的大小。这就相当于，改变上图 VI 前面板的大小，在这个前面板上的按钮控件必须跟随前面板的尺寸做出相应调整，在下图中改变 XControl 实例控件尺寸时，按钮的尺寸才会相应地改变。所以上图这个 "外观" 功能 VI 必须被设置为 "根据窗格缩放所有对象"。

对于示例中的棋盘控件，可以简单地规定不允许用户调整它的尺寸。只要在 "外观" 功能 VI 的属性设置中的窗口外观一页，取消 "允许用户调整窗口大小"，即可禁止用户调整 XControl 实例控件的大小。

### 工作原理

"外观" 功能 VI 的程序框图定义了 XControl 的行为。比如当用户点击了 XControl，XControl 就会作出的反应，这与普通的应用程序界面是一样的。它的程序框图采用的也是循环事件结构模式，但是需要特别注意它与应用程序的不同之处。

普通采用循环事件结构的应用程序会一直运行，等待事件出现并进行处理。而 "外观" 功能 VI 只有当 XControl 有事件发生时，才会被 LabVIEW 自动调用，处理完这个事件后，必须立即退出运行。LabVIEW 要等 XControl 的 "外观" 功能 VI 运行结束后再去完成其它界面处理功能。所以，千万不要试图在 XControl 的 "外观" 功能 VI 里添加持续执行的代码，如控制 XControl 上的动画等。这将会导致 LabVIEW 对其它界面的操作失去反应。

"外观" 功能 VI 的超时事件处理与一般的应用程序都不同，程序在这里设置了退出循环，并且超时时间是 0。这意味着，一旦其它的事件都处理完成，"外观" 功能 VI 程序立即转入处理超时事件，然后立即结束运行。

![](images/image756.png "外观功能 VI 的超时处理分支")

### 参数

"外观" 功能 VI 有三个输入参数和三个输出参数。

* Data In / Data Out：从 XControl 接线端写入或读出的数据。它们的数据类型是由 "数据" 功能控件定义的。"外观" 功能 VI 的程序框图开始运行时，Data In 中的数据就是 XControl 当前的值。程序框图运行过程中可以对这一值进行修改。修改后的值由 Data Out 输出，返回给 LabVIEW。

* Display State In / Display State Out：是 XControl 运行时用到的所有内部数据。在本书中有时简称它为状态。它的数据类型由 "状态" 功能控件定义。它也可以在程序运行中被改变，它的输入输出方式与 Data 类似。

* Container State：输入参数。它是一个簇，用于表明 XControl 实例（把一个 XControl 拖拽到一个 VI 的前面板上，就产生了一个 XControl 的实例）在 VI 面板上的状态。它包含三个元素： "Indicator?"、"Run Mode?" 和 "refnum"。 "Indicator?" 表明 XControl 实例是否是一个显示控件。当其值为假时，表明 XControl 实例是一个控制控件。"Run Mode?" 表示 XControl 实例所在的 VI 是否处于运行状态。"refnum" 是指向 XControl 实例的引用。

* Action：输出参数，用于通知 LabVIEW 程序在这次执行中对 XControl 所做的修改。它包含三个元素："Data Changed?"、"State Changed?"和"Action Name"。如果在程序中改变了 Data，那么就一定要把"Data Changed?"设置为真，通知 LabVIEW。这样，改变的数据才会生效。同样，如果改变了 State，则一定要把"State Changed?"设置为真。"Action Name"是一个字符串，可以给它输入一段表明这次程序运行的简短文字。这段文字会在 LabVIEW 的菜单项" 编辑 -\> 撤销 " 中出现。

### 数据更改事件

"外观" 功能 VI 中的事件处理结构主要处理两类事件。一类是针对 XControl 的特殊事件，另一类是用户在界面上操作产生的事件。

针对 XControl 的特殊事件有 4 个：数据更改、显示状态更改、方向更改、执行状态更改。

当有一个数据通过控件的接线端输入给 XControl 的实例时，就会触发数据更改事件。对于数据更改事件的处理，通常是用新的数据更新界面上的控件和 XControl 的状态（Display
State）。

在棋盘 XControl 的例子中，它的数据就是棋盘的布局。因此，如果程序给 XControl 设置了新数据，就需要对 XControl 界面上棋子的布局做出相应的更新。

下图是黑白棋控件对数据更新事件的处理代码：根据新的棋盘布局，刷新棋盘在界面上的显示。程序中使用到了一个子 VI。它用于计算黑白棋子可以落下的位置，用于 XControl 检查用户操作的合法性。在这里主要介绍 XControl 的相关内容，所以不再对子 VI 再做详细解释。黑白棋子可以落下的位置被记录在 XControl 的状态中。在更新了棋子的布局后，需要重新计算黑白棋子可以落下的位置，并更新 XControl 的状态。由于 XControl 状态改变，必须通知 LabVIEW 对新状态做相应的处理。所以，这里一定要把 "State Changed?" 设置为真。

![](images/image757.png "数据更改事件处理")

### 显示状态更改事件

如果通过调用 XControl 的属性和方法，改变了 XControl 的状态的值，就会触发显示状态更改事件。在上文中，曾提到数据更改事件的处理代码会改变 XControl 的状态的值，但这不会触发显示状态更改事件。只有调用 XControl 的属性和方法，才有可能触发这一事件。后文将会介绍如何创建 XControl 的属性和方法。

对于显示状态更新事件的处理，一般是根据新的状态值更新界面上的控件、以及 XControl 的数据和状态。比如，棋盘控件提供了一个方法 "走子"，在程序中调用这一方法，就会在棋盘上走一步棋。走棋后，必然需要更新棋盘控件的布局和其它状态。因此，必须让 "走子" 方法改变 XControl 的一个状态数据 "method"，把它的值设置为 "Play One"。这样，method 一旦改变，XControl 的显示状态更新事件就会被触发。

下图是对 "走子" 方法的处理。当显示状态更新事件被触发后，先要检查一下 method 的值。如果是 "Play One"，说明 "走子" 方法被调用了。这时需要重新计算棋盘的布局和黑白子的可落子位置。这些操作与数据更改事件的处理方法是相似的。但是因为这个操作既更新了黑白棋 XControl 的数据，也更新了它的状态，所以 Data Changed? 和 State Changed? 都要被设置为真。

![](images/image758.png "显示状态更新事件处理")

### 方向更改事件和执行状态更改事件

当 XControl 实例控件由控制控件变换为显示控件，或反向变换的时候，就会触发方向更改事件；当 XControl 实例控件所在的 VI 由运行态转变为编辑状态，或反向转变时，就会触发执行状态更改事件。对这两个事件的处理是类似的：在某些状态下，需要禁止用户在界面上的操作。在这个黑白棋控件中，对这两个事件的处理是相同的：当控件为显示控件，并在运行状态时，禁止用户对界面点击：

![](images/image759.png "方向更改事件处理")

在某些情况下，XControl 的实例控件更改了方向或运行状态，可能还需要其它一些更改。（这有点像数值控件，改变方向后，需要改变增量 / 减量按键的显示状态。）

### 界面事件

除了前面提到的四个特殊事件外，XControl 的 "外观" 功能 VI 和普通界面应用程序一样，需要对用户在界面上的操作做出反应。所以，XControl 的 "外观" 功能 VI 同样可以对界面上控件的值改变、鼠标点击等事件进行处理。

黑白棋 XControl 只需处理一个用户界面事件：当用户在棋盘上合法的位置点击鼠标时，表示走一步棋。

在捕获到棋盘界面上点击鼠标事件后，首先判断这里可否落子。如果可以，则落下一子，然后重新计算棋盘的布局和其它状态。程序在这里还发出了一个事件，这个事件是发给使用了棋盘 XControl 实例的 VI 的。后文将会介绍如何使用这一事件。

![](images/image760.png "用户走子事件处理")

## "转换状态以保存" 功能 VI

"转换状态以保存" 功能 VI
用于保存 XControl 的状态数据。默认情况下，XControl"外观" 功能 VI 中的状态（Display
State）全部都会被保存在调用它的 VI 中。如果状态数据比较大，无疑会增加 VI 的内存大小。但是，这些状态也许并不需要保存。有些控件的状态，比如控件颜色，尺寸等信息，需要在 VI 关闭后仍然保存，在下次打开时，还可以保持上次的修改。但是有些状态中的数据，只是临时使用的，不需要保存。这个黑白棋控件的任何状态数据，如当前颜色、可落子的位置等等都是每次重新计算出来的，不需要保存下来。所以，在 "转换状态以保存" 功能 VI 中，可以丢弃所有数据，保存一个空数据就可以了：

![](images/image761.png "“转换状态以保存”功能 VI")


## "初始化" 功能 VI

"初始化" 功能 VI 有两个作用，一是把保存在调用 XControl 的 VI 中的状态读取出来，赋给 XControl 的状态。二是打开或初始化 XControl 需要使用到的资源。在调用黑白棋控件的 VI 中，没有保存任何状态数据在 VI 中，所以不需要读取任何数据。但是黑白棋控件使用到了一个用户事件，所以需要在 "初始化" 功能 VI 中创建这个事件：

![](images/image762.png "初始化")

## "反初始化" 功能 VI

"反初始化" 功能 VI 负责关闭 XControl 中打开的资源。黑白棋控件在 "初始化" 功能 VI 中创建了一个事件，所以在这里要销毁它：

![](images/image763.png "反初始化")

## 属性

在程序中，可以通过控件的属性节点来读取或设置一个控件的某些属性，比如它的位置，颜色等等。同样，也可以为 XControl 实例控件添加自定义的属性，以供程序运行时使用。

在项目浏览窗口的 XControl 上点击鼠标右键，选 "新建 -\> 属性"，即可为 XControl 添加属性。每个属性对应两个 VI，分别用于读、写属性。去掉其中一个 VI，属性就变成只读或只写了。通常，属性读写 VI 中的代码非常简单，基本上就是读出 XControl 状态中的某个数据，或者把某个数据写到 XControl 状态中去。

黑白棋控件的属性也是非常简单的，比如 "Current
Color" 属性用于得到当前该下什么颜色的棋子。这是一个只读属性，它读取属性 VI 的实现如下：

![](images/image764.png "读取属性 VI")


在应用程序中使用 XControl 控件的属性，和使用普通控件的属性是相同的：

![](images/image765.png "XControl 实例控件的属性节点")

## 方法

XControl 控件的方法与普通控件的方法也是类似的。在应用程序中通过调用节点来调用 XControl 控件的方法。方法与属性的区别在于，属性每次用于读写一个数值，而方法用于完成 XControl 的某一功能，并且它可以同时读写多个参数。

方法的创建以及实现方法都和属性类似。它对应的 VI 所作的工作也是读写 XControl 的状态。XControl 方法的参数个数是不定的，但是不能通过直接增加或删除方法 VI 上的控件来改变方法的参数。改变参数个数或类型，只能在方法的配置对话框中完成。鼠标右键点击项目浏览器中的方法 VI，选择 "配置方法" 即可激活其配置对话框：

![](images/image766.png "方法 VI 的配置对话框")

黑白棋中有一个方法："走子"。应用程序每调用一次这个方法，就会在棋盘上走一步棋。不过，走棋的具体算法是在 "外观" 功能 VI 的显示状态更改事件处理中完成的，所以在 "Play
One Step" 方法中只要把走子的位置记录到 XControl 的状态中即可。

它的实现代码如下所示。

![](images/image767.png "XControl 方法的实现")

首先，判断落子的位置是否合理。如果是，则修改状态中相应的数据（落子位置）。这个方法同时还要设置 "method" 的数据，这样，在 "外观" 功能 VI 中就可以知道是哪个方法被调用了。

## 事件

控件应该能够发出特定的事件，这在程序中是非常必要的。因为目前大多数应用程序的界面部分都采用循环事件结构的模式。非常遗憾的的是，XControl 实例控件自身不具备产生事件的功能。所以，使用 XControl 的 VI，不能像截获普通控件的事件（比如鼠标点击等）那样，直接在事件结构的编辑事件对话框中选取某个 XControl 实例控件的事件。如果希望 XControl 实例控件也能像使用其它控件那样，发出事件供应用程序使用，就只能借助用户自定义事件来实现这一功能。

实现的方法是，先创建一个用户自定义事件，在 XControl 的状态中把它保存下来，然后在应用程序的事件结构中注册这个自定义事件。用户自定义事件是在 "初始化" 功能 VI 中创建的，然后保存在 XControl 的状态中。为了在应用程序中得到这个自定义事件，需要为它创建一个 XControl 属性。在应用程序中读取该属性，然后注册。这样，应用程序的事件结构就可以捕获来自 XControl 控件的事件了。

在应用程序中，注册和使用 XControl 事件的代码如图下所示：

![](images/image768.png "使用 XControl 中的事件")

## 棋盘 XControl 的使用

XControl 的使用方法与普通控件是相同的（除了事件处理稍微复杂之外）。只要把 XControl 文件拖拽到界面 VI 上，就可以使用了。下图是一个演示程序的界面，它由黑白棋 XControl 控件和其它几个必要的控件组成。

![](images/image769.png "演示程序界面")


演示程序的程序框图是一个典型的循环事件处理结构。通过读写 XControl 的属性和调用 XControl 的方法完成程序功能：

![](images/image770.png "演示程序的程序框图")

### 人工智能下棋

值得一提的是，这个示例程序中实现了一个简单的人工智能下棋功能。每次调用“Computer Play One Step.vi”，它就会返回一个电脑认为最优的落子位置。

![images_2/z106.png](images_2/z106.png "Computer Play One Step.vi")

这个 VI 遍历当前可以落子的每一个位置，为每个位置打分（调用 predict_score.vi），然后选取得分最高的那个位置返回。代码中有个延时，可以去掉。延时只是因为这个打分一瞬间就完成了，看上去有点别扭。让它等一等再返回结果，看上去就好像电脑在思考一样。

虽然与 XControl 无关，因为恰好用到，所以在这里简单介绍一下人工智能下棋的实现方法。所有 AI 下棋的思路都和上面提到的过程非常类似：根据当前的盘面，给每个可以落子的位置打分，选取分数最高的那个走法。这里的关键就是设计一个最为合理的打分算法。

黑白棋最终判定胜负的标准是看谁的子多，所以一个最符合直觉的打分方法是：在一个位置落子后，把己方的棋子数目作为这个位置的分数。就是说，每次都选取能让己方子数变得最多的那个位置落子。这个算法有个缺陷：当前能让己方棋子数变得最多的走法，不见得就能保证将来也棋子数也最多。有时候，可能需要以进为退才能去等最终胜利。

解决这个缺陷的思路有两条：其一是：不要为当前这一步打分，而是向后多预测几步。比如，把双方各下三步棋（也就是总够六步）后的所有可能出现的局面都列出来，然后看哪个局面得分最高。采取此种思路，考虑的步数越深，棋力也就越高，极端情况下，甚至可以找到简单游戏的必胜下法。这个思路的缺点是运算量太高。增加预测的深度，计算量会指数级增加。虽然可以通过剪枝做一些优化，但效果有限。

第二条思路是在打分的时候考虑更多的因素。如果只考虑棋子数量还不够好，那么就也同时考虑落子的位置、稳定的棋子的个数、周围空间的个数等等。在这众多的因素中哪些更重要，如何分配权重，对于我这种非专业棋手来说是很难做选择的。不过这部分可以利用机器学习算法，让电脑自己找到最优解。这个思路所需运算量较低，但不那么容易找到最优方法。

当然，以上两条思路可以结合使用：先找到一个最优的打分算法，再尽量预测到更深的步数。

演示程序只采用了第二条思路，它仅预测一步。它采用了一个只有一层隐藏层，64 节点的全链接神经网络对所有可以落子的位置进行打分。单隐藏层 64 节点的神经网络对于解决黑白棋来说，有点太小了。如果希望只预测一步，就达到比较不错的效果，估计至少也应该采用一个七八层的 CNN 模型。不过，这里仅仅是为了做演示，并且复杂模型移植到 VI 中会过于复杂，所以笔者还是选择了这个最简单的模型。

模型的输入数据是当前棋盘状态（每个位置棋子的颜色）和一个准备落子的位置，模型输出一个实数表示得分。程序会选取得分最高的位置返回。

训练模型的大致思路是：让模型分别持黑子和白子，自己跟自己下棋，并且记录下每一步的走法。最终胜利一方所有走过的位置都获得正标签，失败一方所有走过的位置都是负标签。用这些位置和标签训练模型，然后重复以上过程训练多次。

在训练模型的过程中，笔者遇到了一些以前从未考虑过的问题。比如，采用何种激活函数。笔者开始采用了 ReLU 函数，但模型却始终无法被训练到预期效果。调试后发现，是 ReLU 的神经元坏死造影响了训练效果。ReLU 在输入值小于零时，梯度永远为 0，这个神经元很可能再也不会被任何数据激活了。这对于目前常见的有着几万乃至几百亿节点的大规模模型来说，根本不是问题。但是对于一个本来就没几个节点的小型模型来说，损失神经元是非常致命的。笔者把激活函数换成 Sigmoid 之后，效果就好了很多。

最终训练出的模型基本可以和笔者打个平手。当然，笔者也是几乎不会下黑白棋的，只是知道它的基本规则。

## 实现动画

我们在[界面设计实例](ui_cases)一节已经介绍了 LabVIEW 中实现简单动画的方法，使用 XControl 来制作具有动画效果的控件会更复杂一些。因为 XControl"外观" 功能 VI 中的超时时间只能设置为 0，也就不能利用 "外观" 功能 VI 的事件结构来定时，实现每隔一段时间刷新一次界面的方法来实现动画功能。在 XControl 中实现动画效果，需要把控制界面刷新的定时代码放到另一个线程中去运行，这可以借助在[装载和运行子 VI ](vi_server_for_subvi)一节介绍的后台任务程序架构。

举一个简单的例子。若需要编写一个 XControl，它是一个镶嵌着不停闪烁的灯泡的按钮，如下图所示：

![images_2/z067.gif](images_2/z067.gif "带闪烁灯的按钮")

这个程序的设计思路如下：

首先，编写一个后台任务。XControl 界面上的灯泡控件的引用被传递至后台任务 VI 中。后台任务负责计时，每到规定的间隔时间，就通过设置灯泡控件的颜色属性，改变其颜色。这样看起来，灯泡就是在不停闪烁的。下图是这个后台任务计时部分的简化示意图。真实程序中还要考虑到处理 XControl 发来的事件，比示意图稍复杂。

![](images/image771.png "后台任务负责计时部分的代码")


XControl 的 "初始化" 功能 VI 负责把后台任务启动起来。这里需要注意的是，计时 VI 是一个可重入 VI，在打开它的引用时，"选项" 输入为参数 "8"。这个参数的含义是，每次打开计时 VI 的一个副本。同一个 XControl 可能会同时被创建多份实例，它们的后台任务也必须是独立的，否则计时就会相互影响，出现混乱。（关于 "打开 VI 引用" 函数的 "选项" 输入参数的设置的详细说明，可以参考 "LabVIEW 帮助"。）

![](images/image772.png "XControl 的初始化功能 VI")


与此相应，要在 XControl 的 "反初始化" VI 中关闭后台任务。这个例子中，只要发送一个 "Exit" 事件给后台任务，它就会自己结束运行。

![](images/image773.png "XControl 的反初始化功能 VI")


## 得到调用 XControl 实例的 VI 的信息

在 XControl 的 "外观" 功能 VI 中，可以通过 Container
State 这个输入参数，得到 XControl 实例的引用。这个实例就是被放置在应用程序上的那个 XControl 控件。一旦得到这个控件的引用，我们就可以使用 VI
Scripting 的所有功能对其进行操作了。利用 VI
Scripting 的强大功能，就可以实现各种功能和效果都相当酷的 XControl 控件。下面仅举一例。

假如需要实现这样一个 XControl，它看上去就像是一个普通的按钮，但实际上用户永远按不到它。一旦用户把鼠标挪到它上面，它就会立即换个位置。如果要在 XControl 中实现这个功能，则必须得到 XControl 的实例在 VI 上的位置，并且可以设置新的位置。同时，为了防止按钮跑到前面板显示区域之外，还要知道 XControl 所在的 VI 的前面板尺寸。这些数据都可以通过 XControl 实例控件的引用得到。

下图是 XControl "外观" 功能 VI 对鼠标移动到控件上这个事件的处理代码。它所实现的功能是，首先得到 XControl 实例控件的位置、以及 VI 前面板的尺寸；然后随机产生一个新的位置（程序中的子 VI 就是用来计算控件新位置的），把 XControl 实例控件移动到新的位置上去。

![](images/image774.png "XControl 外观功能 VI 的按钮控件鼠标进入事件处理")


这段代码存在一个小问题，那就是它有一处循环。这个循环是为了实现 XControl 在 VI 前面板上移动的动画效果。理论上，XControl"外观" 功能 VI 中不应该存在任何循环。因为循环运行时间都比较长，会阻塞 LabVIEW 对其它界面的反应。不过这里的循环运行次数较少，速度非常快，所以不会引起明显的界面反应迟钝的问题。

给这个按钮起名叫 "淘气按钮"。把它放在 VI 的前面板上，一旦试图去点击它，它就会跑掉。当然，在编辑状态下，还是可以逮到它的。只要先把它用鼠标框住选中它，它就不会动了。在 VI 运行状态下，就真的没办法按到它了。

## 错误处理

控件一般不会返回错误信息给应用程序。所以在 XControl 的功能、属性、方法等 VI 中，一般可以直接忽略程序中出现的错误。如果需要在程序调试时参考这些出错信息，可以暂时在弹出对话框中显示这些错误，或把它们记录在文件中。但是在发布 XControl 给用户前，应当移除这些用户不需要的代码。

## 调试

XControl 的调试和普通程序没有太大区别。先在 XControl 的功能、属性、方法等 VI 中设置断点，然后再使用 XControl，当程序运行至断点处，就会暂停下来。等待调试者的进一步命令。

调试中若发现问题，当然希望能及时修改 XControl 的代码。但是，一旦打开了 XControl 的任何一个实例，在项目浏览器上，就会为相应的 XControl 加上一把锁，禁止编辑。这是为了防止对 XControl 进行改动后出现实例与 XControl 的不一致。这时，可以鼠标右键点击项目浏览器上的 XControl，选择 "解锁库以编辑"。接下来就可以对 XControl 进行修改了。

![](images/image775.png "解锁 XControl")

当 XControl 处于编辑状态时，在应用程序上的 XControl 的实例会暂时失效，应用程序也无法运行。

![](images/image776.png "失效的 XControl 实例")

待 XControl 修改完成，鼠标右键点击项目浏览器上的 XControl，选择 "应用实例改动"，就又会重新回到运行状态。

## 练习

* 制作一个控件模拟下图所示的调光开关，它不但可以开关还可以控制灯泡的亮度。界面最好做的比示例更美观。

![images_2/image19.png](images_2/image19.png "调光开关示例")
