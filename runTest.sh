for test in ./test-*.txt; do
    test_output="${test%.txt}.output"

    if ./tp0 <"$test" | diff - "$test_output"; then
        echo "Test $test passed!"
    else
        echo "Test $test failed..."
        exit 1
    fi
done
