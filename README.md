# craftinter

Java and C implementations of the contents of the book **Crafting Interpreters** by Robert N.

## Commands

- Clean:

```sh
make clean
```

### Java

- Build:

```sh
make java build
```

- Run:

```sh
make java run FILE="$PWD/file.lox"
```

- Package:

```sh
make java package
```

This will generate a binary in `./out`. To run it:

```sh
java -jar out/jlox.jar
```

- Package AST generation tool:

```sh
make java package-tool
```

Then:

```sh
java -jar out/generate_ast.jar <output_dir>
```