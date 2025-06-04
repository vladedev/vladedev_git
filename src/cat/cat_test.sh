# TEST 1: Basic cat
cat test.txt > cat_output1.txt
./s21_cat test.txt > s21_cat_output1.txt

if diff -q "cat_output1.txt" "s21_cat_output1.txt" > /dev/null; then
    echo "Test 1: success"
else
    echo "Test 1: fail"
fi

# TEST 2: Number all lines (-n)
cat -n test.txt > cat_output2.txt
./s21_cat -n test.txt > s21_cat_output2.txt

if diff -q "cat_output2.txt" "s21_cat_output2.txt" > /dev/null; then
    echo "Test 2: success"
else
    echo "Test 2: fail"
fi

# TEST 3: Number non-blank lines (-b)
cat -b test.txt > cat_output3.txt
./s21_cat -b test.txt > s21_cat_output3.txt

if diff -q "cat_output3.txt" "s21_cat_output3.txt" > /dev/null; then
    echo "Test 3: success"
else
    echo "Test 3: fail"
fi

# TEST 4: Show ends (-e)
cat -e ascii.txt > cat_output4.txt
./s21_cat -e ascii.txt > s21_cat_output4.txt

if diff -q "cat_output4.txt" "s21_cat_output4.txt" > /dev/null; then
    echo "Test 4: success"
else
    echo "Test 4: fail"
fi

# TEST 5: Squeeze blank lines (-s)
cat -s test.txt > cat_output5.txt
./s21_cat -s test.txt > s21_cat_output5.txt

if diff -q "cat_output5.txt" "s21_cat_output5.txt" > /dev/null; then
    echo "Test 5: success"
else
    echo "Test 5: fail"
fi

# TEST 6: Show tabs (-t)
cat -t test.txt > cat_output6.txt
./s21_cat -t test.txt > s21_cat_output6.txt

if diff -q "cat_output6.txt" "s21_cat_output6.txt" > /dev/null; then
    echo "Test 6: success"
else
    echo "Test 6: fail"
fi

# TEST 7: Show ends (-E)
cat -E test.txt > cat_output7.txt
./s21_cat -E test.txt > s21_cat_output7.txt

if diff -q "cat_output7.txt" "s21_cat_output7.txt" > /dev/null; then
    echo "Test 7: success"
else
    echo "Test 7: fail"
fi

# TEST 8: Show tabs (-T)
cat -T test.txt > cat_output8.txt
./s21_cat -T test.txt > s21_cat_output8.txt

if diff -q "cat_output8.txt" "s21_cat_output8.txt" > /dev/null; then
    echo "Test 8: success"
else
    echo "Test 8: fail"
fi

# TEST 9: Show non-printing characters (-v)
cat -v ascii.txt > cat_output9.txt
./s21_cat -v ascii.txt > s21_cat_output9.txt

if diff -q "cat_output9.txt" "s21_cat_output9.txt" > /dev/null; then
    echo "Test 9: success"
else
    echo "Test 9: fail"
fi

# TEST 10: Number non-blank lines (--number-nonblank)
cat --number-nonblank test.txt > cat_output10.txt
./s21_cat --number-nonblank test.txt > s21_cat_output10.txt

if diff -q "cat_output10.txt" "s21_cat_output10.txt" > /dev/null; then
    echo "Test 10: success"
else
    echo "Test 10: fail"
fi

# TEST 11: Number all lines (--number)
cat --number test.txt > cat_output11.txt
./s21_cat --number test.txt > s21_cat_output11.txt

if diff -q "cat_output11.txt" "s21_cat_output11.txt" > /dev/null; then
    echo "Test 11: success"
else
    echo "Test 11: fail"
fi

# TEST 12: Squeeze blank lines (--squeeze-blank)
cat --squeeze-blank test.txt > cat_output12.txt
./s21_cat --squeeze-blank test.txt > s21_cat_output12.txt

if diff -q "cat_output12.txt" "s21_cat_output12.txt" > /dev/null; then
    echo "Test 12: success"
else
    echo "Test 12: fail"
fi

# Clean up generated files
rm -f cat_output*.txt s21_cat_output*.txt

exit 0