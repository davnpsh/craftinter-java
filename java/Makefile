OUT_DIR=../out
SRC_DIR=.
MAIN_CLASS=com.craftinter.lox.Lox
TOOL_CLASS=com.craftinter.tool.GenerateAst
JAR_NAME=jlox.jar

SOURCES=$(shell find $(SRC_DIR) -name "*.java")

.PHONY: build run package

build:
	mkdir -p $(OUT_DIR)
	javac -d $(OUT_DIR) $(SOURCES)

run: build
	java -cp $(OUT_DIR) $(MAIN_CLASS) $(FILE)

package: build
	echo "Main-Class: $(MAIN_CLASS)" > $(OUT_DIR)/manifest.txt
	jar cfm $(OUT_DIR)/$(JAR_NAME) $(OUT_DIR)/manifest.txt -C $(OUT_DIR) .

package-tool: build
	echo "Main-Class: $(TOOL_CLASS)" > $(OUT_DIR)/manifest.txt
	jar cfm $(OUT_DIR)/generate_ast.jar $(OUT_DIR)/manifest.txt -C $(OUT_DIR) .