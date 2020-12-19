MAIN_PACKAGE_FOLDER = "src/gobugtracker"
MAIN_FILE = "${MAIN_PACKAGE_FOLDER}/main.go"

BUILD_OP_FOLDER = ".build"
BUILD_OP_NAME = "gobugtracker"

all:
	@echo "Hello"
	@echo $(MAIN_FILE)

build:
	rm -f $(BUILD_OP_FOLDER)/$(BUILD_OP_NAME)
	go build -o $(BUILD_OP_FOLDER)/$(BUILD_OP_NAME) ${MAIN_FILE}
run-code:
	go run ${MAIN_FILE}
run-exec:
	go run ${MAIN_FILE}
init:
	cd $(MAIN_PACKAGE_FOLDER) && go mod init poriyiyal.com/gobugtracker
