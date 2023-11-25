# LabVIEW Tutorial

## About This Book

"My Decade of LabVIEW Programming," ISBN: 9787512408487, first published in 2009 by Beihang University Press, encapsulates my journey of learning and programming with LabVIEW. The book demystifies LabVIEW's most essential features and addresses common challenges encountered by learners, presented in a reader-friendly format.

![images_2/cover.png](../../../../docs/images_2/cover.png "原书封面")

With Beihang University Press's approval, I've made the entire book available on GitHub, aiming to reach and assist a broader audience. Recognizing that the original title didn't quite fit the evolving context, I've renamed this open-source project to something more universal. I welcome and encourage readers to contribute to this project. Whether it’s correcting mistakes, adding new content, or enhancing examples, your input on GitHub is invaluable. Should you have any inquiries or comments, please don’t hesitate to post them in the comment section below.

For a more accessible reading experience, especially on mobile devices, you can visit the book's dedicated web pages at <https://lv.qizhen.xyz/en/> or <https://labview.qizhen.xyz/en/>. To access the full table of contents on a mobile screen, simply click the three-line menu icon in the top left corner. The complete text and all images from the book are housed in the GitHub [docs folder](https://github.com/ruanqizhen/labview_book/tree/main/docs), while the corresponding sample code resides in the [code folder](https://github.com/ruanqizhen/labview_book/tree/main/code). Here, you'll find most of the examples cited in the book, with a few exceptions omitted due to copyright concerns.

The initial version released on GitHub is based on the original manuscript of the book's second edition. Since its release on the platform, I've extensively updated and expanded this version, resulting in significant differences from the published edition. Originally written in Chinese, I began translating the book into English in 2023. Admittedly, mastering English has been a more formidable challenge for me than any programming language. My English may not be perfect, and combined with my limited expertise, the book might contain some errors or inaccuracies. Since its initial release, I've been fortunate to receive constructive feedback from numerous enthusiastic readers, which has been instrumental in refining and enhancing the book's quality. I extend my heartfelt gratitude to all the readers for their support and feedback. If you notice any errors or have suggestions for improvement, please do not hesitate to leave a message in the comments or contact me directly. Your assistance is not only deeply appreciated but also crucial for the ongoing improvement of this work.


## Introduction

As a former software engineer at National Instruments Co. Ltd. (NI), I bring a wealth of personal experience to the writing of this book, which remains an independent project. Please note, some opinions expressed may not align with NI's official views and are provided for informational purposes only.

This book has its roots in a series of LabVIEW programming articles I originally published on my blog (<https://ruanqizhen.wordpress.com>). These blog posts, initially intended for seasoned LabVIEW programmers, lacked detailed explanations for novices. In transforming these articles into a book, I have restructured and elaborated on the content, making it more accessible for beginners in LabVIEW programming. The insights and methods detailed here stem from my accumulated experience with LabVIEW, both in study and practice. It's important to note that, given the constraints of time and my personal capacity, this book doesn’t encompass every facet of LabVIEW.

The book focuses on several key areas:

* **My Areas of Expertise:** Although Viewing LabVIEW can also be viewed as a tool for measurement and control, I draw upon my technical background to guide readers through using LabVIEW from the perspective of a programming language. The book frequently draws parallels with other programming languages, providing a multi-faceted understanding of LabVIEW.

* **Common Challenges:** With experience as a LabVIEW instructor for both corporate and academic settings, I've identified frequent challenges faced by beginners. This book dedicates significant space to these common issues, offering solutions and explanations.

* **Practical Examples:** Theoretical knowledge is supplemented with practical programming examples, illustrating various solutions to specific issues in LabVIEW, along with their respective pros and cons.

* **Focus on Core Functions:** Recognizing time constraints, the book prioritizes the most commonly used functions in LabVIEW, expanding into less common areas as needed.

* **Complementary to LabVIEW Documentation:** This book is not a substitute for LabVIEW's official documentation. Readers are encouraged to consult LabVIEW’s help resources for specific functions or parameters.

Content is structured from simple concepts to more complex ones. If you encounter challenging material, feel free to skip it and revisit after exploring later chapters. You can also use the search box on the book's online reading page for specific topics.

Maintaining and updating this book has been an extensive process. It began with examples and screenshots from LabVIEW 8.6 Chinese Edition and has since incorporated later versions, including English editions and those for different operating systems. This diversity has resulted in a variety of interface styles in the screenshots, for which I ask for the reader's understanding. All example programs, including the VIs shown in illustrations, are available in the GitHub repository associated with this book.

Remember, programming is a skill honed through practice. While this book serves as a valuable reference, hands-on experience is crucial for mastering LabVIEW programming.

## My Journey as a Programmer

The publication of the first edition of this book marked my tenth anniversary as a software engineer at NI. LabVIEW has been central to my work since I joined NI, shaping my career as a software engineer. Reflecting on a decade of professional growth, I realized that sharing my journey and insights into LabVIEW programming through a book would be the most fitting tribute.

My connection with LabVIEW dates back to my university years. I remember a project where we were tasked with simulating a control system. It required inputting a stimulus signal and observing the output. This challenge sparked a thought: What if programming could be simplified into connecting blocks representing transfer functions? Such a method would greatly simplify constructing complex systems.

This idea resurfaced when I first encountered LabVIEW. It mirrored my university concept - connecting small blocks with lines to build a program. This immediate familiarity fostered a lasting preference for LabVIEW over other programming languages. My initial foray into LabVIEW revealed its user-friendly nature, especially compared to text-based languages like C. It's a true graphical programming language, offering detailed prompts and tips that alleviate the need to memorize complex function details. Graphical programming, in essence, is not only more intuitive but also significantly clearer than traditional text coding.

My journey with LabVIEW began without the guidance of textbooks; I was self-taught, relying solely on the software. At the time, Chinese resources on LabVIEW were scarce, and English materials seemed challenging. Yet, this approach had its merits, notably the profound sense of achievement from solving problems independently and not being confined to conventional methods.

However, my ambition extended beyond simple applications. I aimed to harness LabVIEW for large-scale software development, necessitating a deeper understanding of the language. This led me to delve into various intermediate and advanced LabVIEW tutorials, particularly those authored by NI. These resources, while rich in principles, often skimmed over practical programming techniques, prompting me to study diverse code samples from other engineers for a more comprehensive learning experience.

As a passionate advocate for LabVIEW, my aspiration is to see it gain widespread acceptance as a general-purpose programming language, on par with C and Java. While acknowledging its unique strengths, I also recognize LabVIEW's limitations, which have motivated me to contribute to its evolution - making it more robust and user-friendly. This book is a testament to that commitment, chronicling my experiences, learnings, and hopes for the future of LabVIEW programming.