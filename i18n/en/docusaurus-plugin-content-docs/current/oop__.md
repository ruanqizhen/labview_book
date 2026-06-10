# Object Oriented Programming

![](../../../../docs/cover/oop.png)

Object-Oriented Programming (OOP) is a paradigm that structures software by grouping data and behavior into objects. At its core, OOP helps decompose large-scale programs into decoupled, manageable modules. This creates systems that are flexible (easy to extend with new features) and stable (adding new features doesn't break or require modifying existing code).

As software systems grow in size and complexity, a pure dataflow approach in LabVIEW can become difficult to modularize. Without structured boundaries, wires can span across the entire Block Diagram, creating tight coupling and making the codebase hard to maintain. While unstructured programming works fine for small utilities, it becomes a liability for large-scale applications. Object-Oriented Programming provides the formal encapsulation needed to scale LabVIEW applications successfully.

For simple scripts and single-purpose VIs, OOP is unnecessary overhead. For mid-sized projects (dozens of VIs), the decision to use OOP depends on requirements like extensibility and reuse. However, once a project grows to hundreds of VIs or requires collaboration among multiple developers, OOP becomes essential to prevent code conflicts, maintain clear boundaries, and keep the application maintainable.