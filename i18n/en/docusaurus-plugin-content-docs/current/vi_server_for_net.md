# Network Services and ActiveX Interfaces

## Network Services

The VI Server's capabilities extend over the TCP/IP protocol, enabling control or modification of VIs on a different computer through VI Scripting. For utilizing the network services of the VI Server, both the controlling and the remote computers must enable the TCP/IP protocol within LabVIEW's settings dialog. Moreover, the remote computer needs to configure its settings to allow access from the controlling computer's IP address.

To exemplify the network service functionality of the VI Server, consider the following example. The diagram below represents a VI that runs on a remote computer, designed to fetch the operating system information of that computer.

![Block Diagram of a VI on a Remote Computer](../../../../docs/images/image441.png "Remote Computer's VI Block Diagram")

On the controlling computer, this VI can be called programmatically to execute on the remote machine and return its results. This procedure mirrors the method used for dynamically calling a VI on a local machine, with the primary distinction being the need to establish a connection to the remote computer using the "Open Application Reference" function before opening the VI reference:

![Block Diagram for Dynamically Calling a VI on Another Computer](../../../../docs/images/image442.png "Dynamically Calling a VI on Another Computer")

## ActiveX Interface

The VI Server also offers ActiveX services as another protocol for interfacing. ActiveX primarily facilitates the invocation of VI Server services by other programming languages. For instance, if the core of a certain test is scripted in a textual programming language, but one of its tasks is developed in LabVIEW, the textual language can leverage the ActiveX protocol to execute a VI in LabVIEW and pass along parameters.

The following script is crafted in VB Script, demonstrating how to open a VI's front panel and initiate its execution:

```vb
Set lvapp = CreateObject("LabVIEW.Application")
Set vi = lvapp.GetVIReference("C:\temp\test.vi")
vi.FPWinOpen = True
vi.Run
```

Given that Internet Explorer supports VB Script, this script can also be embedded within an HTML document, enabling a feature where a page hyperlink points to a VI. Clicking this link would then open the associated VI. Similar functionality can be achieved in other browsers using JavaScript.