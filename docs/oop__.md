# 面向对象编程

![](cover/oop.png)

图中的帅哥正在面向他的对象编程......

如果用一句话解释为什么要有“面向对象编程”（Object-Oriented Programming，OOP），那就是：面向对象编程可以有效地把大程序拆分成小模块，帮我们创建一个既灵活又稳定的系统：灵活体现在可以随时添加新的功能；稳定性体现在它在添加新功能时，不需要改动已有的程序模块。

现实中需要编程解决的问题越来越复杂，规模越来越大。但是，LabVIEW 中最直观的，最自然的面向数据流的编程方式却并不适合把大项目拆解成小模块。并不是说它无法实现程序的模块化，而是按照这种思路模块化大型程序会出现很多问题，难以扩展和管理。小程序还好，在大型项目中，程序员最终都不得不借助面向对象的编程来解决这些问题。

如果一个程序只有几个 VI，那么不使用面向对象的方法也完全没问题。设计和编写面向对象的程序，也是需要花费一些额外的精力和资源的。如果程序的规模在十几个到几十个 VI 之间，编程者可以根据自己的具体情况决定是否采用面向对象的设计。当程序规模达到上百 VI，或者是有多个开发者开发团队合作开发的项目，就需要认真考虑采用面向对象的编程思想了。随着程序规模的扩大，程序会变得越来越难以维护和扩展，而面向对象的编程思想是解决这一问题最有效的手段。
