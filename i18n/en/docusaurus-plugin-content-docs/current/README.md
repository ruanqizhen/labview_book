# LabVIEW Tutorial

## About This Book

"My Decade of LabVIEW Programming", ISBN: 9787512408487, first published in 2009 by Beihang University Press, encapsulates my journey of learning and programming with LabVIEW. The book demystifies LabVIEW's essential features and addresses common challenges encountered by learners, presented in a reader-friendly format.

![images_2/cover.png](../../../../docs/images_2/cover.png "Cover of The Published Book")

With the consent of Beihang University Press, I've made the entire book available on GitHub, aiming to reach and assist a broader audience. Recognizing that the original title was no longer fully representative of its expanded scope, I've given this open-source project a more descriptive name, The LabVIEW Journey. The initial version released on GitHub is based on the original manuscript of the book's second edition. Since its release on the platform, I've extensively updated and expanded this version, resulting in significant differences from the published edition. Originally written in Chinese, I began translating the book into English in 2023. Originally written in Chinese, I began translating the book into English in 2023. Translating complex technical concepts has been a formidable, yet rewarding, challenge. While I have strived for technical and linguistic accuracy, the rapid evolution of software and the nuances of translation mean there is always room for refinement. Since its initial release, I've been fortunate to receive constructive feedback from numerous enthusiastic readers, which has been invaluable in enhancing the book's quality.

I sincerely invite and encourage readers to contribute to this ongoing project. Whether it is correcting mistakes, adding new content, or refining examples, your contributions on GitHub are greatly appreciated. Should you have any questions or comments, please do not hesitate to post them in the comments section below.

For a more accessible reading experience, especially on mobile devices, you can visit the book's dedicated web pages at https://lv.qizhen.xyz/en/ or https://labview.qizhen.xyz/en/. To access the full table of contents on a mobile screen, simply click the three-line menu icon in the top left corner. The complete text and all images from the book are housed in the GitHub [docs folder](https://github.com/ruanqizhen/labview_book/tree/main/docs), while the corresponding sample code resides in the [code folder](https://github.com/ruanqizhen/labview_book/tree/main/code). Here, you'll find most of the examples cited in the book, with a few exceptions omitted due to copyright concerns.


## Introduction

As a former software engineer at National Instruments Co. Ltd. (NI), I bring a wealth of personal experience to the writing of this book, which remains an independent project. Please note, some opinions expressed may not align with NI's official views and are provided for informational purposes only.

This book has its roots in a series of LabVIEW programming articles I originally published on my blog (https://blog.qizhen.xyz). These blog posts, initially intended for seasoned LabVIEW programmers, lacked detailed explanations for novices. In transforming these articles into a book, I have restructured and elaborated on the content, making it more accessible for beginners in LabVIEW programming. The insights and methods detailed here stem from my accumulated experience with LabVIEW, both in study and practice. It's important to note that, given the constraints of time and my personal capacity, this book doesn’t encompass every facet of LabVIEW.

The book focuses on several key areas:

- **My Areas of Expertise:** While LabVIEW is widely recognized as the industry standard for test, measurement, and control, I draw upon my software engineering background to guide readers through using it fundamentally as a powerful, general-purpose programming language. The book frequently draws parallels with other programming languages, providing a multi-faceted understanding of LabVIEW's architecture.

- **Common Challenges:** With experience as a LabVIEW instructor in both corporate and academic settings, I've identified frequent hurdles faced by beginners—such as managing race conditions, breaking away from excessive local variable use, and scaling from simple loops to robust state machines. This book dedicates significant space to these common issues, offering practical solutions and detailed explanations.

- **Practical Examples:** Theoretical knowledge is supplemented with practical programming examples, illustrating various solutions to specific issues in LabVIEW, along with their respective pros and cons.

- **Focus on Core Functions:** Recognizing the reader’s time constraints, the book prioritizes the most commonly used functions in LabVIEW, expanding into less common areas as needed.

- **Complementary to LabVIEW Documentation:** This book is not a substitute for LabVIEW's official documentation. Readers are encouraged to consult LabVIEW’s help resources for specific functions or parameters.

Content is structured from simple concepts to more complex frameworks. If you encounter challenging material, feel free to skip it and revisit after exploring later chapters. You can also use the search box on the book's online reading page for specific topics.

Maintaining and updating this book has been an extensive process. It began with examples and screenshots from LabVIEW 8.6 Chinese Edition and has since incorporated later versions, including English editions and those for different operating systems. This diversity has resulted in a variety of interface styles in the screenshots, for which I ask for the reader's understanding. All example programs, including the VIs shown in illustrations, are available in the GitHub repository associated with this book.

Remember, programming is a skill honed through practice. While this book serves as a great reference, hands-on experience is crucial for mastering LabVIEW programming.

## My Journey as a Programmer

The publication of the first edition of this book marked my tenth anniversary as an engineer at NI. Throughout my tenure at NI, LabVIEW has been a pivotal aspect of my professional life, shaping my career as a software engineer. I could think of no better way to celebrate this journey than by encapsulating my experiences and lessons in a book.

My connection with LabVIEW dates back to my university years. I remember a project where we were tasked with simulating a control system. It required entering a stimulus signal and observing the output. This challenge sparked a thought: what if programming could be simplified into connecting blocks representing transfer functions? Such a method would greatly simplify constructing complex systems.

The seed of this idea blossomed the moment I encountered LabVIEW. It mirrored my university concept - connecting small blocks with lines to build a program. This immediate familiarity fostered a lasting preference for LabVIEW over other programming languages. My initial foray into LabVIEW revealed its user-friendly nature, especially compared to text-based languages like C++. It's a true graphical programming language driven by the dataflow paradigm — where execution is determined by the routing of data between nodes rather than sequential lines of text. Graphical programming, in essence, is not only more intuitive but also significantly clearer for modeling parallel processes than traditional text-based programming.

I began learning LabVIEW without textbooks, relying solely on the software. At the time, Chinese resources on LabVIEW were scarce, and English materials seemed challenging. Yet, this self-taught approach had its merits, notably the profound sense of achievement from solving problems independently and not being confined to conventional methods.

However, my ambition extended beyond simple applications. I aimed to harness LabVIEW for large-scale software development, necessitating a deeper understanding of the language. This led me to delve into various intermediate and advanced LabVIEW tutorials, particularly those authored by NI. These resources, while rich in theoretical principles, often lacked focus on practical, day-to-day programming techniques, prompting me to study diverse code samples from other engineers for a more comprehensive learning experience.

As a passionate advocate for LabVIEW, my aspiration is to see it gain widespread acceptance as a general-purpose programming language, on par with C and Java. While acknowledging its unique strengths, I also recognize LabVIEW's limitations, which have motivated me to contribute to its evolution - making it more robust and user-friendly. This book is a testament to that commitment, chronicling my experiences, learning, and hopes for the future of LabVIEW.
