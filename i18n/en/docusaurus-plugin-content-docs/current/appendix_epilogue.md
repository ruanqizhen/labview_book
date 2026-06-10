# Epilogue

![](../../../../docs/cover/epilogue.png)


## The Writing Process

Early in my career, my parents encouraged me to write down the lessons and insights from my daily work. Their goal was twofold: to help me summarize my own experiences and to share those learnings with others. At the time, I felt too inexperienced and my writing too clumsy. Combined with my natural laziness, I procrastinated for a long time.

In 2006, some colleagues suggested we co-author a book to make some extra income. After researching the LabVIEW books on the market and their sales figures, we realized that technical book writing in this niche was not financially rewarding. While their enthusiasm quickly faded, I remained captivated by the sense of accomplishment that comes with publishing a book. I decided to pursue the idea alone and began planning in earnest.

Once I actually started writing, I realized how slow and grueling the process could be. I had to brainstorm content, write and debug code examples, and draft the text all at the same time. I could barely write 1,000 words a week. At that pace, finishing a book felt like a distant, almost impossible goal.

This initial attempt made my limitations clear. I decided to start smaller by writing short articles to hone my skills and build up material. I began posting technical notes on my personal blog. Over the next couple of years, several publishers approached me about book proposals, but feeling unready, I politely declined.

In the summer of 2008, Hu Xiaobai from Beihang University Press reached out with a publishing proposal. Impressed by their professionalism, and with strong encouragement from my wife, my dream of writing a book was rekindled. Although I had only been blogging for about two years and had a limited collection of posts, I realized a first book didn't have to be perfect. Simply compiling and sharing my practical experiences was a worthy starting point.

While blogging allowed for spontaneous, disconnected posts, a book required a structured, cohesive narrative. It demanded that I cover topics I had never written about before, making the workload and challenge far greater. Writing in my spare time meant giving up TV, gaming, and online socializing. In the first three months after signing the contract, I was highly motivated and wrote nearly half the book. However, an overseas business trip and a heavy workload at my day job stalled my momentum. Over the next two months, I managed only a single chapter and fell far behind schedule. Remembering my long-held dream, I pushed through, spending another three months to complete the manuscript. After two more months of editing and proofreading, the final draft was finally ready.

The book was published in 2009 and went through several reprints and editions. However, in the fall of 2012, a career transition moved me away from LabVIEW development. Without daily exposure to the platform, I could no longer maintain the book, and it went out of print after 2014. It wasn't until 2020, when NI released the free LabVIEW Community Edition, that I picked up the software again as a hobbyist. In 2021, with the blessing of Beihang University Press, I open-sourced the entire manuscript on GitHub and updated it for the community.

In 2023, the rise of Large Language Models (LLMs) changed everything. Astonished by their capabilities, I began integrating them into my work and daily writing. As a non-native English speaker, I used these models to proofread and refine my drafts, which dramatically improved the quality of my writing. Witnessing how powerful this tool is, I decided to translate this entire book into English, hoping to share my insights with a broader global audience.


## Crafting an E-Book

When I first thought about publishing the book as an e-book online, I had zero web development experience. But because my requirements were simple—just text, code, and images with no complex interactive features—I figured I could learn as I went.

My first decision was finding a hosting solution. The options were renting a cloud virtual server or using GitHub Pages. While a custom cloud server would offer total control and bypass geographic access issues, I didn't want the burden of server maintenance and updates. I wanted to focus entirely on writing. GitHub Pages, which hosts static web pages for free directly from a repository, was the perfect fit. My only concern was the occasional network instability of accessing GitHub from certain regions, but I decided to cross that bridge when I got to it.

With the hosting sorted, I had to build the site. Being completely new to web dev, I started writing raw HTML and JavaScript in Notepad, teaching myself JS as I went. My first prototype simply turned each chapter into a static HTML file. However, writing books directly in HTML is incredibly tedious and hard to maintain. I soon switched to writing in Markdown (`.md`), a lightweight plain-text formatting language that is ideal for technical writing. I used open-source JavaScript libraries to render these Markdown files into HTML on the fly in the user's browser, which formed the first version of the website.

I soon realized that implementing advanced features like search from scratch was far beyond my skillset. That led me to research modern static site generators. I first tried **Docsify**, an elegant tool that renders Markdown files in the browser dynamically. It worked similarly to my custom script but came with a rich plugin ecosystem. Adding a search box or a sidebar table of contents took only a single line of configuration. But Docsify had one major flaw: it was terrible for Search Engine Optimization (SEO). Because it relies entirely on client-side rendering (using client-side JavaScript to load and render Markdown files at runtime), search engine crawlers—which often do not execute complex JavaScript—saw only a blank shell. My website was invisible to Google.

To fix this, I looked for a tool that compiled Markdown files into static HTML on the server. I chose **Docusaurus**, a React-based static site generator developed by Meta. It was visually polished out of the box and had excellent SEO. The downside was its complexity. Docsify is a simple script you can drop into a folder, making it very popular among non-technical writers. Docusaurus, however, is a full Node.js project that requires compiling and building the site, making it geared mostly toward programmers. Fortunately, being a programmer myself, I was able to set it up. At last, the book was successfully indexed and searchable on Google.


## Acknowledgments

First and foremost, I want to thank my parents. It was their persistent encouragement that pushed me to start writing. My father was my very first reader; he meticulously read every chapter and tested almost all the code examples, catching countless errors in the early drafts.

I am deeply grateful to my former colleagues. Although writing is a solitary task, their support was invaluable. Guo Wenzhe, the manager of NI's Shanghai R&D Center, took the time to write a foreword for the book despite his busy schedule. My manager, Li Chunyuan, went out of her way to navigate marketing and legal channels to secure the permissions needed for publication. Colleagues like Zhang Nanxiong, Chen Dong, and Zhang Ruofan reviewed my early drafts and offered critical technical feedback.

Thanks also to my friends Wu Wei, Wang Yao, Ye Yongqing, and Xu Jian, whose early discussions and brainstorming sessions inspired me to take on this project.

I want to express my gratitude to the wider LabVIEW online community. Our discussions on forums, blogs, and over email provided the inspiration for many sections of this book. Since publication, readers have pointed out typos and bugs, helping me continuously refine the text. I am incredibly grateful for your support.

Finally, a special thank you to my wife. Her daily support and constant encouragement kept me going. Whenever I felt stuck or wanted to give up, her belief in me helped me overcome my inertia and see this project through to the end.