function mentor-dotnet() {
	echo "$(pwd -P)"
	TARGET_DIR=$(pwd -P)
	TEST_FILE=$(find $TARGET_DIR -type f -name \*Test.cs)
	echo "Removing skips: $TEST_FILE"
	sed -i 's/Fact(Skip = "Remove to run test")/Fact/g' $TEST_FILE
	docker run -it --rm -v "$(pwd -P)":/test  mentor/dotnet /bin/sh -c "cd test && dotnet test"
}

