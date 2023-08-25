## "Elevating Java: Unleashing Power with Lambda Functions and Stream API"


<img src="https://i0.wp.com/i.imgur.com/rtjKUji.png?resize=840%2C509&ssl=1" height=700> 


# Coding Superpowers Unleashed!

Ready to level up your Java skills? 📚 Imagine coding that's as smooth as butter - that's where Lambda Functions and the Stream API come into play. 🎮 Lambda Functions are like coding shortcuts, making your work easier and fancier. ✍️ And Stream API? It's your magic wand 🪄 for working with data, simplifying the tricky parts. Together, they're the dynamic duo that'll turn your code from meh to marvelous, even if you're new to this! Say goodbye to confusing loops and hello to streamlined, powerful Java with Lambda Functions and Stream API. 🎩🔮


<<<<<<< HEAD
# LEARNING MATERIAL
=======
## Tutorial clip on OOP 
+ [Week one video by Daro]()
+ [YouTube video on functional interface](https://www.youtube.com/watch?v=VRpHdSFWGPs)
+ [Lambda Expressions](https://howtodoinjava.com/java-8-tutorial/)
+ [Default methods & static methods in interfaces, functional interface](https://www.javatpoint.com/exception-handling-in-java)
+ [Concrete Class](https://medium.com/heuristics/interface-vs-abstract-class-vs-concrete-class-196f20c3af9a)
 
# LEARNING OUTCOMES
1. Understand how to code in a functional way using Lambda 
2. Understand Java Predicate and Functional Interface 
3. Understand the types of exceptions 
4. Know why Exceptions are handled and how they are handled 

## Meet some common functional interfaces 

### Predicate<T>: 😃
"Decider" for stuff like: Is this good? 🤔
Helps you check if something is true or false.
Example: Check if a number is big: Predicate<Integer> isBig = num -> num > 10;

### Function<T, R>: 🔄
"Change machine" for data: Change oranges to juice! 🍊🥤
Transforms something into something else.
Example: Convert inches to centimeters: Function<Double, Double> inchesToCm = inch -> inch * 2.54;

### Consumer<T>: 🍔
"Eater" for data: Eat pizza! 🍕😋
Uses data but doesn't return anything.
Example: Eat up a message: Consumer<String> eatMessage = msg -> System.out.println(msg);

### Supplier<T>: 🛒
"Supplier" of goods: Get fresh bread! 🥖
Gives you something without needing anything.
Example: Get a random number: Supplier<Integer> randomNum = () -> (int) (Math.random() * 100);

### UnaryOperator<T>: 🔢
"Changer" for one thing: Square that number! 🤯
Changes one thing into another of the same kind.
Example: Double a value: UnaryOperator<Integer> doubleValue = num -> num * 2;

### BinaryOperator<T>: ➕
"Adder" for two things: Add milk + sugar! ☕
Combines two things into one.
Example: Add two numbers: BinaryOperator<Integer> adder = (a, b) -> a + b;

### BiFunction<T, U, R>: ✌️
"Two-input changer": Mix flavors! 🍦🍫
Changes two things into something new.
Example: Combine words: BiFunction<String, String, String> wordCombo = (word1, word2) -> word1 + word2;

Remember, these are like tools in your coding toolbox that help you do cool stuff with less effort! 🛠️🚀

## Stream API
### Filter: 
🕶️ Choose Wisely: Use Stream to pick out what you want from a pile.

### Map: 
🎨 Makeover Time: Change each thing into something new, like a fun makeover!

### ForEach: 
🪄 Say Hello to Everyone: Greet each thing as it comes by, like meeting friends.

### Reduce: 
🧮 All Together Now: Add up things to find their total, just like counting.

### Collect:
🧺 Gather and Organize: Put things into neat groups, like arranging toys.

### Count:
🔢 Counting Made Easy: Let Stream do the counting, like magic counting beans.

### Distinct: 
🪞 No Duplicates Allowed: Only keep one of each thing, like a unique collection.

### Limit and Skip:
🚧 Take Control: Decide how many things to look at, and skip some if needed.

### Sort: 🎯 Put in Order: Arrange things from small to big, like arranging books by size.

### Parallel Processing:
🤝 Teamwork Boost: Get things done faster by working together, like a team of helpers.
Now you have a simple way to remember the Stream API concepts in Java! 🌟🚀🧙‍♂️












