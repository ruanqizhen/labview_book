# Fundamentals

## Modular Programming

LabVIEW's dataflow-driven paradigm bears resemblance to procedural programming in that both perceive a program as a collection of processes or functionalities, orchestrated through dataflow in LabVIEW to determine the sequence of operations. When designing programs with this mindset, a top-down approach naturally emerges.

Consider, for example, a program designed to perform a testing task. The initial step in its design would involve outlining the overall framework, potentially dividing the test into several phases: data collection, analysis, display, and storage. Consequently, the main VI would comprise sub-VIs dedicated to these specific tasks. The next step involves refining these sub-VIs, further delineating the tasks into more granular processes, such as opening hardware devices, configuring them, retrieving data, and finally closing the devices.

This method intuitively segments a program into various modules across different levels. The complexity and the number of modules increase with the program's size. Given the inherent similarities across different programs or within various sections of the same program, reusing some modules in different contexts or even across multiple programs becomes a time-saving strategy.

The trend towards larger programs introduces increased complexity and code volume, necessitating collaborative development efforts. Typically, each developer might only be intimately familiar with a small segment of the overall program. However, discovering that existing code can fulfill a required function would likely lead to its reuse.

As a result, upon the completion of a large-scale program, the interconnections among its modules may deviate from the original, neatly structured tree-like hierarchy envisioned. The relationships between modules can become muddled, with both the creators and users of the modules possibly lacking a comprehensive understanding of their application within the program.

The challenge arises when a module requires modification. Developers might identify minor bugs or new requirements that necessitate adjustments to a module's functionality. Therefore, the developer or maintainer might revise the module to meet these new demands. However, they might be unaware that other developers have already employed this module elsewhere in the program, possibly in unforeseen ways. Such modifications could then disrupt the functionality of the program's other components that rely on this module. Module users, unaware of these changes, might struggle to pinpoint the cause of the errors.

In large-scale programming, code and module reuse is unavoidable, and a substantial part of the development and maintenance challenges stem from this misuse of modules. To overcome these issues, a superior module design and implementation strategy is essential. Modules within a program should have clearly defined interfaces, allowing users easy insight into a module's data and methods. Usage of modules should be regulated, with certain methods made accessible to other programs, while those likely to change or cause potential issues should remain private and off-limits. Furthermore, modules should facilitate easy upgrades, optimization, and the addition of new features. Object-oriented programming methodologies are well-suited to address these concerns.


## Classes and Objects

The real world is filled with a myriad of entities. For instance, a room might contain a table, a chair, a computer, and myself. Some of these entities share numerous similarities and can be grouped into the same category. For example, "human" represents a class, while "Qizhen Ruan" is an entity within this human class. Entities in the human class share common traits, such as walking on two legs, speaking, and thinking.

Computer software is created to address problems in the real world or to simulate aspects of it. This concept also applies to program design. For instance, when developing management software for a company, the company may have several employees: Tom, Jerry, etc. These employees have some common characteristics that the program needs to process, such as having a name, gender, age, though the specific values for these attributes may vary.

An "object" is an instance of a class. For example, each specific employee mentioned (like Tom) represents an object of the employee class.

Attributes, also known as data or variables, describe the static state of an object. For instance, instances of the employee class, meaning each employee, would possess attributes like name, gender, and age.

Methods, also referred to as functions or VIs, depict the actions of an object. For example, instances of the employee class might include methods for working overtime and receiving wages.

## Object-Oriented Program Design

Object-oriented programming (OOP) refers to a software development approach that uses objects as the fundamental building blocks of a program, as opposed to procedural programming, which organizes the program into modules based on functions or procedures. Structuring a program around objects enhances its reusability, flexibility, and extensibility.

Object-oriented programming is distinguished by three main characteristics: encapsulation, inheritance, and polymorphism.


## Encapsulation (Data Abstraction)

Encapsulation is the practice of bundling the data (attributes) and methods that operate on the data into a single unit, or class, and restricting access to some of the object's components. This concept allows for the internal workings of a class to be hidden from the outside, presenting a clean, simplified interface to the rest of the program. It prevents the module's misuse, which can lead to maintenance headaches.

Take, for example, the task of designing a program to simulate the daily activities of small animals. This scenario could abstract all animal behaviors and characteristics into an "Animal" class. This class might include public attributes like age, origin, and name, along with public methods that represent animal behaviors such as eating, moving, and vocalizing. Additionally, the Animal class contains private attributes and methods for internal use only, not accessible to external programs. For instance, an animal's movement might invoke the class's move method, which internally utilizes a private attribute: "number of legs". This attribute cannot be directly altered or accessed by programs outside the class.


## Inheritance

Inheritance allows for the creation of a new class (subclasses) based on an existing class (the parent class), inheriting all the public attributes and methods of the parent. Subclasses can introduce their specific attributes and methods, enabling the modeling of similar entities and their relationships.

For instance, in a program featuring puppies and chicks, both are instances of the Animal class. However, puppies have unique characteristics. To enhance code reusability, these shared features are abstracted into a "Dog" subclass.

The Dog class inherits everything from the Animal class, so when the Dog class is defined as a subclass of Animal, it immediately gains all the public attributes and methods of the Animal class. It can then add its specific attributes and methods, like "guarding" for dogs, while chickens might have "laying eggs".

Subclasses are often called derived classes, whereas parent classes may be referred to as base classes. Ancestors include the parent class and its parents up the hierarchy, whereas descendants or progeny refer to subclasses and their subsequent subclasses down the lineage.


## Polymorphism (Dynamic Binding)

Polymorphism, initially a genetics term referring to the variation in forms among organisms related by descent, in object-oriented programming, denotes the ability of different classes to respond to the same method call in unique ways. Although subclasses may inherit many methods from the parent class, their implementations can vary. This allows for method calls using the parent class's name, enabling the program to execute the same method across various subclasses, each behaving differently. Polymorphism facilitates a unified approach to invoking similar modules within an application, regardless of their specific differences.

For example, various subclasses might share a "makeSound" method inherited from the parent "Animal" class. Yet, the implementation of "makeSound" varies among subclasses: dogs bark, chickens crow. Thus, when an application prompts a group of animals to vocalize, treating all animals as instances of the Animal class allows for a uniform "makeSound" method call. The program automatically discerns whether the instance is a Dog or Chicken subclass, invoking the respective "makeSound" method to produce barking or crowing sounds.