这个项目中包含了一个使用XLClass制作的双向环型链表，以及它的演示程序。

链表的相关操作全部封装在类“DoubleLinkedList.lvclass”中。这些方法包括：
Append: 在当前迭代器所指向的节点的后方插入一个新的节点，并将迭代器指向新的节点。
Erase: 把当前迭代器指向的节点删除，并将迭代器指向下一个节点。
GetAllNodes: 列出链表中所有的节点。
Enumerator Reset: 把迭代器指向链表首节点。
Enumerator go Next: 迭代器向后移动一个节点。
Enumerator go Previous: 迭代器向前移动一个节点。
Enumerator Current Node: 返回当前迭代器所指向的节点。

在程序中使用这个链表的时候，需要自己定义链表节点的数据类型。如果用户数据已经是lvclass类型，可以把它存储在链表节点ListNode的data变量中。如“Demo - Object Data.vi”所示。
也可以创建一个新的继承于ListNode的类，用于保存用户数据。如“Demo - Custome Node.vi”所示。

这个链表的工作原理可以参考文章：http://ruanqizhen.wordpress.com/2011/04/18/labview%e4%b8%ad%e5%ae%9e%e7%8e%b0%e9%93%be%e8%a1%a8%e3%80%81%e6%a0%91%e7%ad%89%e6%95%b0%e6%8d%ae%e7%bb%93%e6%9e%84/