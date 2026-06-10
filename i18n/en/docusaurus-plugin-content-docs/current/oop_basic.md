# Fundamentals

## Modular Programming

LabVIEW's dataflow-driven paradigm is structurally similar to procedural programming. Both view a program as a collection of sequential tasks or processes, where dataflow determines the execution order. When designing software with this mindset, developers naturally adopt a top-down approach.

For example, to design a test-and-measurement application, you begin by outlining the top-level framework, breaking the test down into logical phases: data acquisition, analysis, display, and storage. The main VI is built by wiring together subVIs dedicated to these tasks. You then drill down into each subVI, splitting them into lower-level operations (e.g., opening hardware sessions, configuring channels, reading samples, and closing sessions).

This modular approach works well for organizing code. As applications grow, so does the library of modules (subVIs). Because many test routines share common requirements, reusing these subVIs across different parts of the application—or in entirely different projects—becomes a core strategy to save time and effort.

However, as programs scale, they require collaborative development. Multiple engineers work on different codebases, often only understanding their specific subsystems. If they discover a subVI that performs a task they need, they will wire it in.

Over time, a large application can lose its clean, hierarchical structure. The dependencies between subVIs become complex and intertwined. Neither the original author of a subVI nor the developers using it have a complete picture of all the dependencies in the program.

This causes serious problems when a subVI needs modification. If a bug is fixed or a new feature is added to a low-level module, the author might update the code without realizing that another developer has used that same module in a different, unexpected part of the application. The modification can break those other systems, leading to bugs that are incredibly difficult to diagnose because the affected developers are unaware of the low-level change.

In large applications, code reuse is essential, but poorly managed dependencies lead to fragile architectures. To scale safely, we need a better module design. Modules must have clearly defined public interfaces. We must be able to restrict access: exposing only safe, stable functions to other developers while keeping internal data and helper VIs private (so they can be modified without breaking upstream code). Additionally, we need to extend or swap modules easily without refactoring the rest of the application. **Object-Oriented Programming (OOP)** is designed to solve these exact architectural challenges.


## Classes and Objects

The physical world is filled with distinct entities: tables, chairs, computers, and people. We naturally organize these entities into categories based on shared traits. For example, "Human" represents a category (a **class**), while the author, "Qizhen Ruan", is a specific individual (an **object** or **instance**) belonging to that class. All humans share common capabilities, such as walking, talking, and thinking.

Software design mirrors this classification. For example, in an HR database, employees (Tom, Jerry, etc.) share common characteristics (names, ages, salaries), although the actual values differ for each person.

- An **Class** is a blueprint or template that defines a category of entities.
- An **Object** is a specific instance of a **Class** (e.g., Tom is an object of the `Employee` class).
- **Attributes** (data or properties) describe the static state of an object (e.g., an employee's name, gender, or ID).
- **Methods** (functions or VIs) define the behaviors or actions an object can perform (e.g., `Calculate Pay` or `Clock In`).


## Object-Oriented Program Design

Object-Oriented Programming (OOP) organizes software around data and objects rather than procedural tasks or functions. By structuring code around objects, we make applications more modular, reusable, and extensible.

Object-oriented programming is characterized by three main pillars: **Encapsulation**, **Inheritance**, and **Polymorphism**.


## Encapsulation (Data Abstraction) {#encapsulation-data-abstraction}

**Encapsulation** is the practice of bundling data (attributes) and the functions that manipulate that data (methods) into a single logical unit (the class), while restricting direct access to the internal state. By hiding the internal workings of a class, you present a clean, stable public interface to the rest of the program, preventing other developers from modifying internal data directly.

For example, in an animal simulation program, you might define an `Animal` class. The class has public properties (e.g., `Name`, `Age`) and public methods (e.g., `Eat`, `Walk`). However, the `Walk` method might internally read a private attribute: `NumberOfLegs`. An external VI cannot read or modify `NumberOfLegs` directly; it can only call `Walk`. This prevents external code from putting the object into an invalid state (like setting `NumberOfLegs` to a negative number).


## Inheritance

**Inheritance** allows you to create a new class (**subclass**) based on an existing class (**parent class** or **base class**). The subclass automatically inherits all public attributes and methods of the parent class, allowing you to reuse code while adding specialized features.

For instance, dogs and chickens are both animals. Instead of rewriting basic movement and naming logic for both, you can inherit them from the base `Animal` class.

A `Dog` subclass inherits from `Animal`, gaining `Eat` and `Walk` automatically, while adding dog-specific features like a `Fetch` method. A `Chicken` subclass also inherits from `Animal` but adds a `Lay Egg` method.

In OOP terminology:
- The parent class is the **base class** or **superclass**.
- The child class is the **derived class** or **subclass**.
- **Ancestors** refer to classes higher up the inheritance tree.
- **Descendants** refer to subclasses down the lineage.


## Polymorphism (Dynamic Binding)

**Polymorphism** (specifically *dynamic dispatch* or *late binding* in LabVIEW) is the ability of different subclasses to respond to the same method call in their own unique ways. Even though subclasses inherit methods from their parent, they can override those methods to implement custom behaviors. This allows the main program to call a method on a generic parent class wire, and the runtime engine will automatically execute the correct subclass implementation.

For example, the parent `Animal` class might define a `Make Sound` method. The `Dog` subclass overrides it to output a bark, while the `Chicken` subclass overrides it to output a cluck. In your main program, you can route an array of generic `Animal` wires to a loop and call `Make Sound` on each element. LabVIEW dynamically determines the object type at runtime and executes the correct method—resulting in barking for dogs and clucking for chickens, without needing Case Structures.