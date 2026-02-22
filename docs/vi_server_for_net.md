# 网络服务和 ActiveX 接口

## 远程 VI 服务器访问 (VI Server over TCP/IP)

VI 服务器的功能不仅限于本机，还可以通过 TCP/IP 协议提供给局域网内的其它计算机。因此，我们可以在一台计算机上控制或动态调用另一台计算机上的 VI。

要启用这一功能，作为服务端的计算机必须在 LabVIEW 的“工具 -> 选项 -> VI 服务器”中进行以下三步严格配置：
1. 启用 TCP/IP： 勾选 TCP/IP 并记住指定的端口号（默认通常为 3363）。
2. 机器访问 (Machine Access)： 添加允许连接到本机的客户端 IP 地址或域名。
3. 导出的 VI (Exported VIs)： 这是最容易遗漏的一步。出于安全考虑，必须明确指定哪些 VI 允许被远程调用（可以使用 * 允许所有，但在实际工程中强烈建议仅指定特定的接口 VI）。

我们以一个简单的例子来说明 VI 服务器的网络服务功能。下图是一个在远端计算机上打开的 VI 的程序框图。它的功能是得到远端计算机的操作系统信息。

![](images/image441.png " 远端计算机上 VI 的程序框图")

在控制端计算机上，可以通过程序来调用这个 VI，让它在远端计算机上运行，并返回结果。这一过程与在本地计算机上动态调用一个 VI 的方法类似。唯一的差别是，在打开 VI 引用之前，首先要使用 "打开应用程序引用" 函数连接到远端计算机：

![](images/image442.png "动态调用其它计算机上 VI 的程序框图")


## ActiveX / COM 接口

除了内部调用，LabVIEW 还作为 Windows 平台上的 ActiveX / COM 服务器运行。这使得其它支持 COM 技术的外部编程语言可以“遥控” LabVIEW，执行打开 VI、传递参数、运行并获取结果等操作。

下面的程序是使用 VBScript 编写的一段代码。将其保存为本地的 `.vbs` 文件并双击运行，就可以在 Windows 系统中自动唤起 LabVIEW，打开并运行指定的 VI。

```vb
Set lvapp = CreateObject ("LabVIEW.Application")
Set vi = lvapp.GetVIReference ("C:\temp\test.vi")
vi.FPWinOpen = True
vi.Run
```

由于 IE 支持 VB
Script，这段代码还可以嵌在 HTML 文件中实现这样的功能：页面上有一处超链接指向一个 VI，点击这个链接，就可以打开相应的 VI。其他浏览器使用 JavaScript 也可以实现类似的功能。

更新：
- 已被 Web 浏览器淘汰： 过去曾有开发者将此类代码嵌入 HTML 中供 IE 浏览器调用。请注意，这种做法在现代 IT 环境中已经完全失效且极其危险。 现代浏览器（Chrome, Edge, Firefox）的沙盒机制严格禁止网页脚本调用本地的 ActiveX/COM 组件。
- 现代主流应用： 如今，LabVIEW 的 ActiveX/COM 接口主要用于本地跨语言自动化测试。例如，算法工程师使用 Python（借助 win32com 库）或测试工程师使用 C# 编写顶层测试序列时，可以通过该接口在后台静默调用 LabVIEW 编写的硬件驱动 VI。

-------

（这里是占位符，留待以后补充）

无论是“VI 服务器的 TCP/IP 调用”还是“ActiveX”，它们都属于相对底层且存在局限性的技术（前者容易被防火墙拦截，后者强绑定 Windows 平台）。在现代 LabVIEW 分布式系统开发中，更推荐以下方案：
- 如果是 LabVIEW 节点之间 的高速数据流通信，首选 网络流 (Network Streams)。
- 如果是跨语言、跨设备或跨公网的通信，首选 LabVIEW 原生的 Web 服务 (Web Services)，通过标准的 HTTP RESTful API 与 Python、Web 前端或其它语言进行 JSON 数据交互。
