# craftinter (Java)

Java implementation of the contents of the book **Crafting Interpreters** by Robert N.

## Build and run

### With CLI

```sh
mvn compile exec:java
```

Passing a file as an argument:

```sh
mvn compile exec:java -Dexec.args="./example.lox"
```

### Using mvnw

Prepare the wrapper for use in a code editor or IDE (like Zed):

```sh
mvn wrapper:wrapper
```
