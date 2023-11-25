# Hello，World!

Many books on computer programming languages start by guiding readers to write a "Hello, World!" program. This entails writing a piece of code that, upon execution, displays the phrase "Hello, World!" on the screen. Embracing this tradition, we'll also begin our LabVIEW journey with a "Hello, World!" program as our first project.

## LabVIEW Startup Interface

Upon launching LabVIEW, you're greeted with its startup interface. The startup screens of LabVIEW vary in style across different versions, as illustrated in the images below, representing the startup screens of LabVIEW 8.6 and LabVIEW 2021:

![images/image2.png](../../../../docs/images/image2.png "LabVIEW 8.6 Startup Interface")

![images_2/w_20211203094255.png](../../../../docs/images_2/w_20211203094255.png "LabVIEW 2021 Startup Interface")

Despite these stylistic variations, the LabVIEW startup interface consistently includes several key elements:

- The "New" section is designated for creating new LabVIEW program files. LabVIEW programs incorporate a variety of file types, including VI, XControl, libraries, classes, global variables, run menus, and custom controls, among others. These will be detailed in the following chapters.

- The "Open" section displays a list of recently opened projects and files. For those who have just installed LabVIEW, this area will initially be empty.


## Creating a New VI

LabVIEW programs are stored in files known as "VIs" (Virtual Instruments). LabVIEW was invented in 1986, with its initial purpose being to simulate test and measurement instruments. By integrating a computer with relevant data acquisition cards and LabVIEW software, it was possible to create a virtual instrument capable of performing specific measurement functions. Thus, LabVIEW's source code files were aptly named "Virtual Instruments", bearing the file extension ".vi", an acronym for Virtual Instrument. Fast forward several decades, LabVIEW's application scope has vastly expanded, encompassing areas like testing, measurement, control, and simulation, yet the term VI remains. Today, a VI can be perceived as a LabVIEW code module that performs specific functions, akin to a function in other programming languages.

To initiate a new VI, select "New -> VI" from the LabVIEW startup interface or opt for "File -> New VI" from the menu. This action will open two new windows on your screen: one featuring a gray background:

![images/image3.png](../../../../docs/images/image3.png "front panel")

And the other with a white background:

![images/image4.png](../../../../docs/images/image4.png "block diagram")

These windows represent a freshly created blank VI, devoid of any code. You can resize these windows by moving your mouse to their edges until the cursor turns into a double-headed arrow, then click and drag to adjust.

A VI is comprised of two main components: the "Front Panel" with a gray background and the "Block Diagram" against a white backdrop. The Front Panel serves as the user interface for interaction with the program, where users can input necessary parameters and view execution results. The Block Diagram is the space for writing the program code, which dictates the program's logic and execution flow.


## Editing the Front Panel

Now, let's start implementing our first LabVIEW program by first designing its interface, which means editing the front panel of the VI.

When the front panel of the VI is the active window, we might also see another floating window - the LabVIEW Controls Palette:

![images/image5.png](../../../../docs/images/image5.png "Controls Palette")

This active window might be closed and not appear initially. In that case, right-clicking on a blank area of the VI's front panel will bring up the Controls Palette as a pop-up menu:

![images_2/z125.png](../../../../docs/images_2/z125.png "Controls Palette")

If needed, you can pin the Controls Palette to always appear when the VI front panel is active by clicking the pin icon at the top-left corner of the palette. If it obstructs the view, you can close it and have it only appear when right-clicking.

Different versions of LabVIEW have slightly varied styles for the Controls Palette, but its purpose and method of use remain the same. The palette categorically lists various controls and their icons. Some control categories may be collapsed; clicking on them will expand to show the controls or subcategories within. For most controls, we can easily discern their types and intended functions from their icons. When designing the program interface, we select the required controls from the Controls Palette.

Our program needs to display text, so we should choose a text or string display control on the front panel. On the Controls Palette, the first three subclasses in the first row typically relate to numeric, Boolean, and string controls, respectively. Clicking on the third column of icons in the first row (related to text display categories) will bring up its sub-palette:

![images/image6.png](../../../../docs/images/image6.png "文本控件子选板")

Continue by clicking on the "String Indicator" control, then click on the VI's front panel, and this control will be placed there. Alternatively, we can drag and drop the selected control directly onto a specific location on the front panel.

Moving the mouse to the edge of the newly placed control will reveal eight small blue squares on its border.

![images/image7.gif](../../../../docs/images/image7.gif "设计好的 VI 界面")

When the cursor is moved to the edge of the control, it changes to the familiar arrow shape. At this point, pressing the left mouse button allows for dragging the control to a new position. If the cursor is moved over the small blue squares on the border, it turns into a two-way arrow, and clicking allows for resizing the control. After adjusting the control to the desired size and position, the interface for our first VI is complete.

## Edit Block Diagram

The logical functionality of a program is implemented in its block diagram. When we place a control on the VI front panel, a corresponding terminal is automatically added to the VI block diagram:

![](../../../../docs/images/image8.png "放置控件后的程序框图")

Data sent to this terminal in the block diagram is then displayed on the front panel control when the program runs. We can pass the string "Hello World!" to this terminal named "String," and upon running the program, the "String" control on the interface will display these words.

When the VI block diagram window is active, a floating window similar to the Controls Palette appears (or can be brought up by right-clicking on a blank area of the block diagram). This is the Functions Palette. The Functions Palette is used in the same way as the Controls Palette, but it contains icons representing functions, structures, constants, and built-in VIs in LabVIEW that control program execution. We need to find a string constant from it to hold the words "Hello World!"

Just like with the Controls Palette, click on the icons on the Functions Palette and navigate to "Programming -> String" to find the String Constant:

![](../../../../docs/images/image9.png "字符串子选板")

Drag the string constant to the VI block diagram. Immediately typing on the keyboard allows you to enter text into the string constant.

LabVIEW uses wires to pass data. Move the cursor to the right middle side of the string constant, and the cursor will change to a spool-like shape. Clicking here will draw a wire from the string constant. Clicking again at the middle left side of the terminal on the String display control will connect the two elements with a wire.

![](../../../../docs/images/image10.gif "准备连线")

With this, our entire program is complete. On the front panel of the VI, click the first arrow-shaped button on the left side of the toolbar to run the VI. You can then see the result of the program execution on the VI front panel:

![](../../../../docs/images/image11.gif "程序运行结果")

If there are errors in the program, the run button's arrow on the toolbar will appear broken, and the program won't run. The button's name changes from "Run" to "List Errors." Clicking this button will pop up an error list dialog box. Errors must be corrected according to the list's prompts, and the program code modified. Only when the run button resumes its arrow shape can the program be run.

As the first program in learning LabVIEW, we should save it for posterity. Select "File -> Save" from the menu, or use the shortcut "Ctrl+S," then choose a suitable path and filename to save the VI.

That's how straightforward and easy to learn LabVIEW programming is!

## The Operational Logic of LabVIEW Programs

Currently, most common programming languages are text-based. For example, languages like VC and C# allow for what-you-see-is-what-you-get editing of interfaces, but their logical parts are still scripted in text. Some graphical programming languages, such as Scratch (refer to the section on "[Other Programming Languages](appendix_languages)"), use graphical representations for code logic but still adhere to a procedural approach, similar to traditional procedural text programming languages like C.

However, as seen in the earlier example, LabVIEW is markedly different from text-based programming languages. Not only does it feature graphical editing of program interfaces, but its programming logic is also implemented through a "drawing" approach. Furthermore, the core consideration in LabVIEW programming is not the problem-solving process, but how data flows between code segments. To help readers understand the differences between LabVIEW and text-based programming languages, this book will often compare LabVIEW with text-based languages like C and Java.

Due to its graphical programming characteristics, LabVIEW is sometimes misunderstood and equated with graphical design and control applications like CAD or specialized software for circuit boards and chemical machinery. However, LabVIEW's flexibility and powerful features are unparalleled by general industry application software; it is indeed a programming language.

To explain LabVIEW programs more clearly, let's first define some terms used in LabVIEW programming. All graphical elements on the VI front panel and block diagram are referred to as **objects**. The most common graphical objects on the VI front panel are **controls**, used for inputting or displaying data. Sometimes, there are other objects on the front panel, like decorative lines or pictures, which do not contain data for program execution. All graphical objects in the VI block diagram can be divided into two parts: **nodes** and **wires**. Wires, also known as data lines, connect the terminals of controls, as seen in the simple program we wrote earlier. Wires are easily identifiable in the block diagram. All other objects in the block diagram are collectively referred to as nodes.

Nodes can be further classified into several types, including:

- **Terminals:** As previously mentioned, terminals correspond to a control on the VI front panel and are used to read or write control data. Terminals function similarly to parameters in text programming languages, with data exchange happening through terminals. 
- **Functions:** Functions are built-in nodes in LabVIEW that perform basic, indivisible tasks. They are akin to operators and low-level library functions in text programming languages. For example, LabVIEW's addition function (![](../../../../docs/images/image12.png))  is similar to the "+" operator in text languages, and its string length function (![](../../../../docs/images/image13.png)) is comparable to the strlen() function in C or len() function in Python.
- **Structures:** Structures control the execution sequence of a program. They are similar to keywords in text languages that control program flow. For instance, LabVIEW's for loop structure (![](../../../../docs/images/image14.png)) is similar to the for statement in C or Python.
- **Sub VIs:** A VI called by another VI is known as a sub VI, analogous to a subfunction in text programming languages.
- **Decorations:** The block diagram of a VI can also contain nodes unrelated to program execution, such as a background image or explanatory text. These elements are purely for making the code more readable and understandable, much like comments in text programming languages.
 
In text-based languages, the fundamental execution order of a program is typically the order in which the statements are written. This means, in the absence of any flow-altering jump statements, the program executes each line of code from top to bottom. In LabVIEW, the program's execution order is controlled by wiring, i.e., the program executes along the wires on the block diagram.

We can understand the execution order of LabVIEW programs as follows:

Data starts at a source node on the block diagram and flows along the connected wire to an input terminal of the next node. After being processed at this node, the data flows out from the node's output terminal along the wire to the next node, continuing until it reaches a terminal node. The order of data flow determines the execution sequence of the program. Therefore, programs written in LabVIEW are described as dataflow-driven.

![](../../../../docs/images/image15.png "一段简单数学运算程序")

The above figure shows a simple mathematical operation program. In a basic VI, the initial and final nodes of data are usually the terminals of controls. Data flows from the "Initial Value" terminal, along the wire to the "Add 1" function, then out from the right side of the "Add 1" function, through the wire to the "Square Root" function, and finally into the "Result" terminal.

Why do data flow out of the "Initial Value" and into the "Result" when both are terminals? This is because every control in LabVIEW can be set as either a control or an indicator, determining the direction of data flow. When set as a control, data flows out of its terminal; when set as an indicator, data flows into its terminal.

By default, whether a control functions as a control or an indicator depends on the characteristics of the physical entity it represents. For example, a switch control is by default a control, whereas a lightbulb control is an indicator. Right-clicking on a control and selecting the "Change to Control/Indicator" option in the shortcut menu allows for changing the data flow direction of the control.

Functions and sub VIs usually have multiple terminals with fixed directions. Data always flows into functions through their input terminals and out through their output terminals.

Wires can have branches. Data flowing out of a terminal can simultaneously flow to multiple receiving terminals. When data reaches a branching point on a wire, a copy is automatically generated, creating two identical and independent sets of data, each flowing to their respective next nodes. Subsequent nodes then process each set of data independently. (This is a simplified explanation; LabVIEW does not necessarily create a copy at every branch. More precise descriptions will be provided later in this book.) As shown below:

![](../../../../docs/images/image16.png "两份独立数据，各自进行运算")

Conversely, a receiving terminal cannot simultaneously accept data from different sources. If such wiring is attempted, the wire turns into a dashed line:

![](../../../../docs/images/image17.png "数据线分叉")

At this point, if you click the "List Errors" button (the same button as "Run") on the toolbar of the VI block diagram window, an error message will appear:

![](../../../../docs/images/image18.png "错误列表")


## Exercise

* Create a new VI, place a switch control and a lightbulb control, and then use the switch to control the turning on and off of the lightbulb.