# The Challenges of LabVIEW

![](../../../../docs/cover/problem.png)

This section discusses some challenges encountered with LabVIEW, including its shortcomings.

## LabVIEW's Unicode Problem

I recently attempted to open some VIs I had written a while ago and discovered that either they couldn't be opened or, once opened, all Chinese characters had turned into gibberish. The fundamental reason for this issue is LabVIEW's lack of support for Unicode encoding.

A brief background on Unicode:

The computer was invented in the United States, so it was initially designed with only the English language in mind. One of the earliest and most famous character representation standards in computers is the ASCII standard (American Standard Code for Information Interchange). It defines 128 characters, including uppercase and lowercase English letters, numbers, common punctuation, and some special symbols. Initially, all computers worldwide used the ASCII scheme for storing English text. The major limitation of this scheme was its exclusive focus on English letters, prompting other countries, organizations, and companies to extend this standard to support other characters, such as tabs, mathematical symbols, Chinese characters, Japanese characters, etc. In China, standards such as GB2312, GBK, GB18030, etc., are extensions of ASCII for Chinese characters. These extensions introduced a troublesome issue: the same numerical value could be defined differently across various standards. For instance, a value might represent a Chinese character under one standard and an unrelated tab character under another. This meant software developed in a Chinese environment would display as gibberish in a Korean system. If someone needed to run both a Chinese and a Korean software application on the same system, only one could display text correctly.

To address this problem, the computer industry started developing a new encoding standard in 1990 that could encompass all characters globally, ensuring any character would have its unique encoding and maintain this encoding across any system, thereby avoiding gibberish displays when switching systems. This is known as Unicode encoding, also referred to as the Universal Code or Unified Code. Unicode defines a character set that exists in various encoding formats. Windows uses the UTF-16LE format of Unicode encoding (UTF stands for Unicode Transformation Format), using 16 bits (two bytes) of data to represent a character. However, today's most popular Unicode encoding format is UTF-8, a variable-length encoding method that represents characters based on their frequency of use, with encoding lengths ranging from 1 to 6 bytes. Most Unicode documents currently use UTF-8 encoding.

After decades of development and promotion, it's rare to find mainstream software that doesn't support Unicode. Unfortunately, LabVIEW has consistently lacked Unicode support. Throughout the 2010s, NI focused on developing LabVIEW NXG, which supports Unicode, intending to completely replace LabVIEW with it. As a result, not enough resources were allocated to improve LabVIEW. Later, NI abandoned LabVIEW NXG. Currently, LabVIEW, which does not support Unicode, remains the only option for users.

Although Windows has supported Unicode for quite some time, it maintains a setting for a default character set to ensure compatibility with software that has yet to adopt Unicode. For software not supporting Unicode, Windows uses this default character set to interpret character encodings. In China, almost all Windows operating systems, whether in Chinese or English versions, have their default character set set to Chinese. Thus, for the vast majority of users, whether a piece of software supports Unicode is largely irrelevant. It wasn't until recently that I became aware of the issues arising from LabVIEW's lack of Unicode support.

I only started to grasp the severity of this issue recently. I own two computers at home: one runs Windows, and the other runs the Chinese Deepin Linux operating system. Both have the community edition of LabVIEW 2021 installed. I noticed that VIs written on the Windows system, if containing Chinese constants or comments, appear as gibberish when opened on the Linux system, and vice versa. Even more troubling is that projects, libraries, or classes containing VIs with Chinese names become completely inoperable when moved to a different system.

The core of these problems lies in LabVIEW's lack of direct Unicode support, relying instead on the default character encoding of the operating system: GB18030 Chinese encoding on Chinese Windows systems and UTF-8 encoding on Linux systems.

Linux universally adopts Unicode without an alternative default encoding, ensuring consistent VI behavior and display across different Linux versions. Windows, while natively using Unicode, allows applications to operate with a user-specified default encoding. Consider a project with two VIs, "interface.vi" and "task1.vi," with "task1.vi" being a sub-VI of "interface.vi." At the system level, there are two files named "interface.vi" and "task1.vi," saved using Unicode encoding. However, within "interface.vi," the name of the sub-VI "task1.vi" it calls is saved using a non-Unicode encoding (e.g., GB18030 on a Chinese Windows system). Consequently, the binary data LabVIEW uses to store this sub-VI's name differs from the binary data the operating system uses for the sub-VI's file name. Each time LabVIEW requires the operating system to load a sub-VI file, a conversion to the system's Unicode encoding is necessary. If both saving and loading the VI occur within Chinese Windows, the encoding remains consistent, avoiding any issues with correctly converting VI names.

However, problems arise when a project saved on a Chinese Windows system is opened on a non-Chinese Windows system (where GB18030 is no longer the default language encoding) or on a Linux system. The VI file names remain correct because the operating systems use Unicode encoding. But opening the VI in LabVIEW leads to errors. Internally, when parsing a sub-VI, LabVIEW attempts to interpret the original GB18030-saved sub-VI name using the new system's default encoding, failing to retrieve the correct VI file name and consequently failing to locate the correct sub-VI. Likewise, VIs saved under Chinese Windows, if they have Chinese names, will fail to open correctly on a Linux system, and the reverse scenario also presents issues.

In conclusion, LabVIEW's lack of Unicode support under Windows results in inconsistent display behavior for Chinese (or other non-English text) across different systems, leading to gibberish or even the inability to load VIs when switching systems. Currently, I haven't found a satisfactory solution to this problem. My workaround has been to use English instead of Chinese and special characters in LabVIEW as much as possible.

Should LabVIEW ever start supporting Unicode, it could mean that projects written in previous versions of LabVIEW, if containing text in other languages, may not open or may display incorrectly in the Unicode version of LabVIEW. This potential for significant compatibility issues might explain why NI has been reluctant to adopt Unicode support.


## Managing Source Code in LabVIEW

Source code management has always posed a significant challenge in LabVIEW.

One major advantage of text-based programming languages is their use of a standardized file storage format. Regardless of the specific text programming language, common tools can be employed for editing, formatting, storing, and tracking the history of code changes, among other tasks. The market offers a plethora of mature tools designed for these purposes. However, LabVIEW differs as it is a graphical programming language and does not adhere to any standard open file format for code storage. Consequently, no tools other than LabVIEW itself can parse or edit LabVIEW code. This means that only National Instruments (NI), the developers of LabVIEW, are in a position to develop source code management tools specifically for LabVIEW. It remains uncertain how much resources NI can or is willing to dedicate to this issue. It is foreseeable that even if LabVIEW were to improve in this area, managing LabVIEW code would still not be as convenient as managing text-based code.

Beyond source code management, sharing and learning LabVIEW also presents its own set of challenges. For instance, when sharing sample code on forums, text-based programming languages allow for straightforward text copy and paste. In contrast, LabVIEW code must be shared as screenshots, which can be problematic for complex conditional or event structures where a single screenshot may not suffice. Sharing VI files directly also falls short, as readers cannot view the contents without opening the file in LabVIEW. Furthermore, if a reader's version of LabVIEW is outdated, they may not be able to open and view the VI file at all.

Ideally, LabVIEW would allow for the complete separation of its components: program logic, the front panel interface, node and wire layout, and compiled code, each saved independently. Programmers would then only need to concentrate on the program's logic. The front panel and the program's diagram layout could be automatically organized according to the preferences and standards of different users. If the program's logical components could be saved in a textual format, it would enable seamless integration with any text-based source code management tool, perfectly marrying the best of both worlds.


## Zoom Features in LabVIEW Block Diagrams

Back when I first began working with LabVIEW, computer monitors typically had a resolution of `640*480`. At that resolution, the screen could hardly fit much code. For larger VI block diagrams, you had to constantly pan and zoom to view different parts. This was a key reason why LabVIEW code was difficult to read. While thumbnails were available, they provided only a vague outline without revealing any of the program's logic, thus being of limited help. I always wished for the ability to slightly zoom out to see more of the code in one view.

Today, I work on monitors with resolutions exceeding `3840*2160`, where a sub-VI icon in LabVIEW is typically about `32*32` pixels, less than one percent of the screen width. Icons for some functions and nodes are even smaller. Combined with the fact that my eyesight isn't as sharp as it used to be, distinguishing the logic of the code, such as identifying operations like addition, subtraction, multiplication, or division, has become challenging. LabVIEW does not offer a feature to zoom in on the code view. Fortunately, modern operating systems support screen magnification, and using this feature to enlarge the LabVIEW interface by two or three times offers a more comfortable viewing size. However, when enlarging other applications by two to three times, the images remain crisp and smooth, whereas LabVIEW's display turns rough and blurry. This issue stems from LabVIEW's reliance on pixel-based graphics instead of vector graphics. In LabVIEW, if an icon originally represented by 1K points is enlarged threefold, it still displays with only 1K points; in contrast, other software would adjust to use 9K points for the enlarged icon. Thus, with the same area but only 1/9 the number of display points compared to others, the result is naturally blurry.

The underlying display logic is a fundamental component of LabVIEW, making alterations a complex challenge. It remains to be seen when LabVIEW might receive necessary optimizations in this regard.


## The Diminishing Advantages of LabVIEW

LabVIEW retains clear strengths in certain domains: for example, its visual programming interface is inherently more engaging than textual code, and it facilitates effortless connection and data acquisition from NI hardware. However, it's hard to ignore that, over the past decade (2012-2022), LabVIEW hasn't evolved much, while other mainstream programming languages have significantly advanced. This has led to a situation where many of LabVIEW's once unique benefits no longer seem as pronounced. I've particularly noticed this in two key areas:

### Debugging Convenience

One of LabVIEW's strong points has always been the ability to execute a VI (Virtual Instrument) independently, which simplifies debugging. Traditionally, debugging a C program—even to test a single line of code change—meant recompiling the entire program to see the outcome. This process was especially tedious for large projects, where recompiling and reproducing the problematic state of the program could be very cumbersome. Being able to run just one function or VI circumvents this issue, allowing for rapid verification of any changes made.

However, in the last decade, several mainstream programming languages have developed similar functionalities. Python is a standout example. As an interpreted language, it inherently doesn't require compiling the entire program to run a single line of code. Running specific segments of code in traditional editors wasn't very convenient until the emergence of web-based programming environments like Jupyter Notebook drastically changed this. Jupyter Notebook breaks down code into manageable blocks that can be executed with the click of a button, with each block capable of containing numerous functions and variables. This is even more convenient than running a single VI in LabVIEW.

Furthermore, the Jupyter editing environment is entirely web-based, eliminating the need for a separate application interface. Launching Jupyter initiates a web service, and programming can be viewed, edited, and debugged right from a web browser, greatly enhancing the ease of remote programming. In the past, verifying a piece of code's correctness required installing the appropriate language compiler on your computer. Nowadays, numerous online programming environments support all the mainstream languages, enabling code to be entered and debugged directly within a web page.

LabVIEW made an attempt at a similar web-based approach with the LabVIEW UI Builder. However, it lacked compatibility with LabVIEW projects, effectively making it a separate language. To run and debug LabVIEW code, one is still required to install a substantial software package on their computer.


### Concurrency

An advantage of LabVIEW is its convenience in writing multithreaded programs, bolstered by its own execution system. This system enables parallel execution of two modules on the block diagram without dependencies, even within a single thread. This feature is particularly beneficial for programs performing extensive I/O operations, such as instrument data reading and writing. It significantly improves program efficiency without requiring additional coding from the developer. While mainstream text-based programming languages support multithreading, their implementation was quite cumbersome a decade or so ago, entangling developers in complex issues like data synchronization and security. However, recent years have seen the development of various high-level toolkits, simplifying the creation of multithreaded applications. Notably, the introduction of asynchronous I/O support in programming languages has made concurrent operations much more accessible.

Languages like Python, JavaScript, and PHP, for instance, now embrace asynchronous I/O. This approach relies on the language's own mechanisms for managing and scheduling, akin to LabVIEW's execution system, which permits different blocks of code to run concurrently on a single thread. Asynchronous I/O addresses the challenge of slow operations, such as peripheral reads/writes or network connections, blocking the entire program. It achieves this with minimal code and spares developers from worrying about issues like data synchronization.

Consider the following Python example:

```python
async def foo(some_arguments):
    # read a file
    return "something from foo"

async def bar(some_arguments):
    # write to a database
    return "something from bar"
    
async def main():
    results = await asyncio.gather(
        foo("file_name"),
        bar("database"),
    )
```

This snippet demonstrates how functions `foo` and `bar` can be executed concurrently with a single line of code, making the process no more challenging than implementing parallel execution in LabVIEW.

## The Impact of the AI Programming Era

Since the first programming languages appeared in the 1950s, researchers have repeatedly attempted to use artificial intelligence to improve the programming process. However, the real turning point did not arrive until after 2020. The rise of large language models (LLMs) transformed AI-assisted programming from a research concept into an industrial reality.

With the release of GPT-3.5 in 2022, adoption accelerated dramatically. AI tools began to significantly increase the productivity of professional developers, while also enabling engineers and scientists with little formal programming background to build complex software systems. Today (as of 2025), nearly all major technology companies have integrated AI-assisted programming into their development workflows. In some projects, AI-generated code accounts for more than half of the total codebase.

Yet when we turn our attention to LabVIEW, the outlook appears less optimistic. The rise of AI programming is not simply another opportunity for LabVIEW—it challenges some of the fundamental assumptions on which the platform was built. While most programming languages are benefiting from the AI revolution, LabVIEW increasingly seems to be moving against the current.

### The Structural Contradiction Between Graphical Programming and LLMs

Could vendors eventually develop AI systems capable of writing LabVIEW code automatically? Perhaps. But the challenge is far greater than building AI tools for traditional programming languages.

LabVIEW uses a graphical programming paradigm—often called G code—based on dataflow. Engineers construct program logic by connecting nodes with data wires, creating diagrams that represent how data moves through the system. For human engineers, this approach is often intuitive and highly efficient. In the AI era, however, the same characteristic becomes a major obstacle.

Modern large language models are fundamentally designed to process linear sequences of text. They learn patterns from enormous collections of source code written in languages such as Python, C++, and Java by analyzing syntax, structure, and contextual relationships in text. LabVIEW code, however, is graphical and two-dimensional. Its structure depends on spatial relationships and wiring connections rather than textual syntax. As a result, it is difficult to serialize and feed directly into current model architectures for large-scale learning.

Understanding the behavior of a VI—and especially generating a correct and well-structured block diagram—is therefore far more difficult for an AI system than generating equivalent logic in Python.

Another factor is training data. The effectiveness of AI models depends heavily on the size and quality of the datasets used to train them. Text-based programming languages benefit from enormous public repositories such as GitHub and Stack Overflow. In contrast, LabVIEW’s open-source ecosystem is relatively small. High-quality public projects are limited, leaving far less material for models to learn from. As a result, AI support for LabVIEW begins with a structural disadvantage.

### AI Competing with LabVIEW’s Core Strengths

More importantly, many of AI’s strengths overlap directly with areas that were once considered LabVIEW’s greatest advantages.

LabVIEW has long been known for its visual user interface development. By simply dragging and dropping controls, users can quickly create interactive interfaces for measurement and control applications. Today, however, AI tools can often achieve similar results from a single natural language prompt.

For example, a prompt such as:

> “Generate a 3D chart with two input controls for X and Y values, and display Z = X × Y using different colors in the chart.”

can produce a complete Python program within seconds. When executed, the program generates the requested visualization and user interface. Because interface layouts and interactions are easy to describe in natural language, AI can often produce them faster than a human engineer. Evidence of this trend can already be seen in web development, where AI has had a stronger impact on front-end engineering than on back-end work.

In a similar way, LabVIEW’s historical advantage in rapid UI prototyping is increasingly being replaced by AI-driven approaches that are both more flexible and more widely applicable.

LabVIEW’s other traditional stronghold—instrument control and data acquisition—is also becoming easier to replicate using AI-assisted tools. Today, an engineer can simply describe the required functionality in natural language and receive a complete Python script built on open-source libraries for hardware control and data analysis. For many tasks, this workflow can be faster and more flexible than developing a LabVIEW application.

### Looking Ahead

AI-assisted programming is rapidly reshaping the entire software development landscape. As AI improves the productivity of mainstream text-based languages, the practical reasons for choosing LabVIEW may gradually diminish.

In the future, LabVIEW’s role may become more concentrated in areas where it remains uniquely strong, such as real-time control systems and industrial automation. In applications that demand extremely high determinism and reliability, LabVIEW combined with dedicated hardware platforms—such as CompactRIO and PXI—running real-time operating systems still provides capabilities that are difficult to replicate with general-purpose tools.

At the same time, LabVIEW is not without potential opportunities. Emerging technologies such as generative graph models and multimodal large language models (MLLMs) may eventually enable AI systems to generate executable graphical code directly. If such technologies mature, LabVIEW could potentially redefine its role in the AI era.

Regardless of the outcome, the coming years will bring significant challenges and transformation. The tide of AI will not slow down. Only by continuing to evolve can LabVIEW avoid being left behind by the currents of technological change.
