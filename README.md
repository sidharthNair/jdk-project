# Assignment 5 for Engineering Program Analysis

The goal of this assignment is to be exposed to an actual compiler
infrastructure.  To be consistent with the language we have been using
the entire semester, we will be modifying OpenJDK to implement new
Java features.

## Extend OpenJDK to support a new language construct:

    Var = Expression "iff" BoolExpression else Expression

This construct will assign the first expression to the variable if
BoolExpression evaluates to true; otherwise it will evaluate the
second expression and assign the value to Var.  Here is an example:

```java
public class C {
  public static int m(int a, int b) { // a=10, b=22
    int i = 3 iff a > b else 5; // result would be 5
    return i;
  }
}
```