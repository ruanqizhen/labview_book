# The Challenges of LabVIEW

![](../../../../docs/cover/problem.png)

This section discusses some challenges encountered with LabVIEW, including its shortcomings.


## LabVIEW's Unicode Problem

A while ago, I attempted to open some VIs I had written years earlier, only to find that some would not open, and others displayed all Chinese characters as unreadable gibberish. The root cause of this frustrating issue is LabVIEW's lack of native support for Unicode encoding.

A brief background on Unicode:

Since early computers were designed in the United States, they initially only supported English characters. The earliest standard was ASCII (American Standard Code for Information Interchange), which defines 128 characters (English letters, numbers, basic punctuation, and control codes). To support other languages, different regions developed their own extensions (e.g., GB2312, GBK, and GB18030 in China). These regional character sets introduced a major issue: different encodings reused the same byte values for different characters. A byte sequence representing a Chinese word in a Chinese encoding would display as meaningless characters (gibberish) on a Korean system, and vice versa. Running multiple regional software applications on the same system was a constant struggle.

To solve this, the industry created **Unicode** in the 1990s—a universal standard assigning a unique code point to every character in every language. Today, the most common Unicode encoding formats are UTF-16 (used internally by Windows) and UTF-8 (the variable-length encoding that dominates the web and modern operating systems).

Today, almost all modern software supports Unicode natively. Unfortunately, classic LabVIEW has historically lacked full Unicode support. During the 2010s, NI directed its R&D resources toward LabVIEW NXG (which did support Unicode and was intended to replace classic LabVIEW). When NXG was eventually abandoned in 2020, classic LabVIEW remained the sole version, leaving its Unicode deficiencies unresolved.

To run legacy, non-Unicode applications, Windows uses a system setting called **Language for non-Unicode programs** (also known as the system locale or active code page). On a Chinese Windows system, this is set to simplified Chinese (CP936/GBK). As long as a developer stays on a Chinese Windows system, LabVIEW displays Chinese characters correctly. The problem only becomes apparent when moving files across different language environments.

I experienced this firsthand when working across different operating systems. I have a Windows PC and a Linux PC, both running LabVIEW 2021 Community Edition. When I opened a VI created on Windows on my Linux machine, all Chinese comments and string constants turned into gibberish. Worse, VIs, libraries, or classes with Chinese filenames could not be loaded at all, breaking the entire project.

The core of these problems lies in LabVIEW's lack of direct Unicode support, relying instead on the default character encoding of the operating system: GB18030 Chinese encoding on Chinese Windows systems and UTF-8 encoding on Linux systems.

Linux uses UTF-8 globally. Windows uses UTF-16 natively but defaults to local code pages for non-Unicode applications. Suppose a main VI `interface.vi` calls a subVI `task1.vi`. While the operating system stores these filenames in Unicode, LabVIEW internally saves the path and name of the subVI within the parent VI's binary data using the active code page (e.g., GBK/GB18030 on Chinese Windows). When loading the subVI, LabVIEW converts this non-Unicode string to Unicode to query the OS file system. On a Chinese Windows system, this conversion is consistent, and everything works fine.

But if you open this project on an English Windows system or on Linux, the conversion fails. LabVIEW attempts to interpret the GBK-encoded bytes inside the parent VI using the new system's default encoding (e.g., CP1252 on English Windows, or UTF-8 on Linux). This mismatch corrupts the path string, causing LabVIEW to report a 'File Not Found' error for the subVI even though the file is clearly visible in the file explorer. Any VI with non-ASCII characters in its name will fail to load or link properly.

In short, LabVIEW's reliance on system code pages makes it highly fragile in multi-language or multi-platform environments. To avoid these issues, **never use non-ASCII characters (like Chinese) in VI names, paths, or libraries**. It is also best to avoid non-ASCII text in comments and string constants if you plan to share your code globally.

While NI could force Unicode enablement in LabVIEW, doing so would create a massive backwards-compatibility hurdle. Legacy VIs saved in regional encodings would display as gibberish when opened in a Unicode-enabled version. This compatibility risk is likely the primary reason NI has resisted making UTF-8 the default encoding in LabVIEW for Windows.


## Managing Source Code in LabVIEW

Source code management has always posed a significant challenge in LabVIEW.

One of the greatest advantages of text-based programming is that the source code is stored as plain text. This allows developers to use universal tools for version control (like Git), code diffing, linting, and automated refactoring. In contrast, LabVIEW code is saved in a proprietary binary format (`.vi` files). Because only the LabVIEW development environment can read and modify these files, version control is notoriously difficult. Standard text-based merge and diff tools are useless; you must configure Git to call LabVIEW's proprietary **VI Diff** and **VI Merge** tools. This dependency makes branch merging and collaborative development in LabVIEW much more cumbersome than in text-based environments.

Sharing LabVIEW code is also a challenge. While text developers can simply paste code snippets into forums or emails, LabVIEW developers must rely on screenshots. For VIs with nested Case Structures or Event Structures, a single screenshot cannot capture the full logic. Direct file sharing is also limited because readers must install the exact or newer version of LabVIEW to inspect it. If a reader has LabVIEW 2018, they cannot open a VI saved in LabVIEW 2021.

An ideal graphical language would completely separate program logic, UI layout, visual layout (diagram coordinates), and compiled code into distinct, text-representable files (like JSON or XML). This would allow developers to track logic changes in Git while letting the editor handle visual layouts automatically. While modern LabVIEW supports separating compiled code from VIs to reduce git churn, it is still far from a true text-graphical hybrid model.


## Zoom Features in LabVIEW Block Diagrams

When I started programming in LabVIEW, monitors typically ran at $640 \times 480$ resolution. With such limited screen real estate, even a moderately sized Block Diagram required constant scrolling. This physical limitation made large block diagrams notoriously difficult to navigate. I often wished for a zoom-out feature to get a bird's-eye view of the codebase.

Today, on a high-DPI $3840 \times 2160$ monitor, the classic $32 \times 32$ pixel subVI icon is tiny, and wire paths are hard to see. For developers with aging eyesight, telling functions apart (like addition vs. subtraction nodes) is a struggle. LabVIEW does not have a native Block Diagram zoom tool. If you use OS-level display scaling, the LabVIEW interface becomes blurry. This is because LabVIEW's user interface is built on legacy pixel-based bitmap assets rather than modern vector graphics (SVG). Scaling up a bitmap simply stretches the pixels, resulting in pixelation, whereas vector graphics remain perfectly sharp at any scale.

The underlying display logic is a fundamental component of LabVIEW, making alterations a complex challenge. It remains to be seen when LabVIEW might receive necessary optimizations in this regard.


## The Diminishing Advantages of LabVIEW

LabVIEW retains clear strengths in certain domains, such as industrial control and hardware integration. However, during the decade from 2012 to 2022, classic LabVIEW saw minimal architectural changes while other mainstream programming languages advanced rapidly. As a result, some of LabVIEW's historical advantages are no longer as unique.

### Debugging Convenience

A major advantage of LabVIEW is **modular execution**: you can run and debug a single subVI independently by simply entering values on its Front Panel and clicking the Run arrow. In C or C++, testing a single function typically requires writing test harnesses, compiling the entire project, and executing the full program, which is slow and tedious for large systems.

However, text-based languages have bridged this gap. Interpreted languages like Python have REPLs, and the rise of **Jupyter Notebooks** revolutionized interactive testing. Jupyter allows you to execute individual blocks of code in isolation, modify parameters, and see plots instantly—offering an interactive feedback loop that rivals or exceeds LabVIEW's modular execution.

Jupyter runs entirely in a web browser. Today, you don't even need to install compilers or libraries locally; you can run and test code in online sandboxes. LabVIEW attempted a similar web visualizer with **LabVIEW WebVIs**, but it was complex and eventually deprecated. Debugging LabVIEW code still requires installing a massive desktop IDE.


### Concurrency

Another key strength was **out-of-the-box concurrency**. The LabVIEW compiler automatically identifies parallel execution paths and assigns them to thread pools. In contrast, text-based concurrency in languages like C++ or Java historically required complex thread creation, locks, and synchronization. However, text languages have developed powerful async/await frameworks that simplify concurrency. Asynchronous I/O libraries allow applications to handle thousands of concurrent tasks on a single thread without blocking.

Languages like Python, JavaScript, and Rust use an event loop to handle non-blocking I/O. By scheduling concurrent tasks on a single OS thread, they avoid lock contention and synchronization issues, matching the scheduling efficiency of LabVIEW's execution system.

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

With the release of GPT-3.5 in 2022, adoption accelerated dramatically. AI tools began to significantly increase the productivity of professional developers, while also enabling engineers and scientists with little formal programming background to build complex software systems. Today, nearly all major technology companies have integrated AI-assisted programming into their development workflows. In some projects, AI-generated code accounts for more than half of the total codebase.

Yet when we turn our attention to LabVIEW, the outlook appears less optimistic. The rise of AI programming is not simply another opportunity for LabVIEW—it challenges some of the fundamental assumptions on which the platform was built. While most programming languages are benefiting from the AI revolution, LabVIEW increasingly seems to be moving against the current.


### The Structural Contradiction Between Graphical Programming and LLMs

Could vendors eventually develop AI systems capable of writing LabVIEW code automatically? Perhaps. But the challenge is far greater than building AI tools for traditional programming languages.

LabVIEW uses a graphical programming paradigm—often called G code—based on dataflow. Engineers construct program logic by connecting nodes with data wires, creating diagrams that represent how data moves through the system. For human engineers, this approach is often intuitive and highly efficient. In the AI era, however, the same characteristic becomes a major obstacle.

Modern LLMs process linear sequences of text. They learn by analyzing text files from public repositories. LabVIEW's G code, however, is a graphical, 2D dataflow representation. Program structure is represented by spatial layout and coordinate wiring connections. This graphical layout is difficult to serialize into a linear text format that an LLM can parse and generate reliably.

Understanding the behavior of a VI—and especially generating a correct and well-structured block diagram—is therefore far more difficult for an AI system than generating equivalent logic in Python.

Furthermore, AI models require vast training data. While text-based languages benefit from billions of lines of open-source code on GitHub, the LabVIEW open-source community is tiny. With very few public repositories to train on, AI models have a structural disadvantage when trying to understand or write LabVIEW code.


### AI Competing with LabVIEW’s Core Strengths

More importantly, many of AI’s strengths overlap directly with areas that were once considered LabVIEW’s greatest advantages.

LabVIEW has long been known for its visual user interface development. By simply dragging and dropping controls, users can quickly create interactive interfaces for measurement and control applications. Today, however, AI tools can often achieve similar results from a single natural language prompt.

For example, a prompt such as:

> "Generate a 3D chart with two input controls for X and Y values, and display Z = X * Y using different colors in the chart."

can produce a complete Python program within seconds. When executed, the program generates the requested visualization and user interface. Because interface layouts and interactions are easy to describe in natural language, AI can often produce them faster than a human engineer. Evidence of this trend can already be seen in web development, where AI has had a stronger impact on front-end engineering than on back-end work.

In a similar way, LabVIEW’s historical advantage in rapid UI prototyping is increasingly being replaced by AI-driven approaches that are both more flexible and more widely applicable.

LabVIEW’s other traditional stronghold—instrument control and data acquisition—is also becoming easier to replicate using AI-assisted tools. Today, an engineer can simply describe the required functionality in natural language and receive a complete Python script built on open-source libraries for hardware control and data analysis. For many tasks, this workflow can be faster and more flexible than developing a LabVIEW application.


### Looking Ahead

AI-assisted programming is rapidly reshaping the entire software development landscape. As AI improves the productivity of mainstream text-based languages, the practical reasons for choosing LabVIEW may gradually diminish.

In the future, LabVIEW's role may consolidate around its core strengths: high-speed data acquisition, real-time control, and industrial automation. For applications requiring hard real-time determinism and tight integration with hardware (like PXI or CompactRIO platforms), LabVIEW remains a dominant and highly productive tool.

At the same time, LabVIEW is not without potential opportunities. Emerging technologies such as generative graph models and multimodal large language models (MLLMs) may eventually enable AI systems to generate executable graphical code directly. If such technologies mature, LabVIEW could potentially redefine its role in the AI era.

Regardless of the outcome, the coming years will bring significant challenges and transformation. The tide of AI will not slow down. Only by continuing to evolve can LabVIEW avoid being left behind by the currents of technological change.
 by the currents of technological change.
