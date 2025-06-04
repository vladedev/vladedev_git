# TEST 1
grep "world" test.txt > grep_output1.txt
./s21_grep "world" test.txt > s21_grep_output1.txt

if diff -q "grep_output1.txt" "s21_grep_output1.txt" > /dev/null; then
    echo "Test 1: success"
else
    echo "Test 1: fail"
fi

# TEST 2
grep -e "world" test.txt > grep_output2.txt
./s21_grep -e "world" test.txt > s21_grep_output2.txt

if diff -q "grep_output2.txt" "s21_grep_output2.txt" > /dev/null; then
    echo "Test 2: success"
else
    echo "Test 2: fail"
fi

# TEST 3
grep -i "world" test.txt > grep_output3.txt
./s21_grep -i "world" test.txt > s21_grep_output3.txt

if diff -q "grep_output3.txt" "s21_grep_output3.txt" > /dev/null; then
    echo "Test 3: success"
else
    echo "Test 3: fail"
fi

# TEST 4
grep -v "world" test.txt > grep_output4.txt
./s21_grep -v "world" test.txt > s21_grep_output4.txt

if diff -q "grep_output4.txt" "s21_grep_output4.txt" > /dev/null; then
    echo "Test 4: success"
else
    echo "Test 4: fail"
fi

# TEST 5
grep -c "world" test.txt > grep_output5.txt
./s21_grep -c "world" test.txt > s21_grep_output5.txt

if diff -q "grep_output5.txt" "s21_grep_output5.txt" > /dev/null; then
    echo "Test 5: success"
else
    echo "Test 5: fail"
fi

# TEST 6
grep -l "world" test.txt > grep_output6.txt
./s21_grep -l "world" test.txt > s21_grep_output6.txt

if diff -q "grep_output6.txt" "s21_grep_output6.txt" > /dev/null; then
    echo "Test 6: success"
else
    echo "Test 6: fail"
fi

# TEST 7
grep -n "world" testфывфыв2.txt test.txt > grep_output7.txt
./s21_grep -n "world" testфывфыв2.txt test.txt > s21_grep_output7.txt

if diff -q "grep_output7.txt" "s21_grep_output7.txt" > /dev/null; then
    echo "Test 7: success"
else
    echo "Test 7: fail"
fi

# TEST 8: Testing -s flag (suppress error messages for non-existent files)
grep -s "world" test.txt non_existent_file.txt > grep_output8.txt
./s21_grep -s "world" test.txt non_existent_file.txt > s21_grep_output8.txt

if diff -q "grep_output8.txt" "s21_grep_output8.txt" > /dev/null; then
    echo "Test 8: success"
else
    echo "Test 8: fail"
fi

# TEST 9: Testing -iv flag combination
grep -iv "world" test.txt > grep_output9.txt
./s21_grep -iv "world" test.txt > s21_grep_output9.txt

if diff -q "grep_output9.txt" "s21_grep_output9.txt" > /dev/null; then
    echo "Test 9: success"
else
    echo "Test 9: fail"
fi

# TEST 10: Testing -in flag combination
grep -in "world" test.txt > grep_output10.txt
./s21_grep -in "world" test.txt > s21_grep_output10.txt

if diff -q "grep_output10.txt" "s21_grep_output10.txt" > /dev/null; then
    echo "Test 10: success"
else
    echo "Test 10: fail"
fi

# TEST 11: Testing -s flag (suppress error messages for non-existent files, repeat for clarity)
grep -s "world" test.txt non_existent_file.txt > grep_output11.txt
./s21_grep -s "world" test.txt non_existent_file.txt > s21_grep_output11.txt

if diff -q "grep_output11.txt" "s21_grep_output11.txt" > /dev/null; then
    echo "Test 11: success"
else
    echo "Test 11: fail"
fi

# TEST 12: Testing -ie flag combination
grep -ie "world" test.txt > grep_output12.txt
./s21_grep -ie "world" test.txt > s21_grep_output12.txt

if diff -q "grep_output12.txt" "s21_grep_output12.txt" > /dev/null; then
    echo "Test 12: success"
else
    echo "Test 12: fail"
fi

# TEST 13: Testing -ve flag combination
grep -ve "world" test.txt > grep_output13.txt
./s21_grep -ve "world" test.txt > s21_grep_output13.txt

if diff -q "grep_output13.txt" "s21_grep_output13.txt" > /dev/null; then
    echo "Test 13: success"
else
    echo "Test 13: fail"
fi

# TEST 14: Testing -ce flag combination
grep -ce "world" test.txt > grep_output14.txt
./s21_grep -ce "world" test.txt > s21_grep_output14.txt

if diff -q "grep_output14.txt" "s21_grep_output14.txt" > /dev/null; then
    echo "Test 14: success"
else
    echo "Test 14: fail"
fi

# TEST 15: Testing -le flag combination
grep -le "world" test.txt > grep_output15.txt
./s21_grep -le "world" test.txt > s21_grep_output15.txt

if diff -q "grep_output15.txt" "s21_grep_output15.txt" > /dev/null; then
    echo "Test 15: success"
else
    echo "Test 15: fail"
fi

# TEST 16: Testing -ne flag combination
grep -ne "world" test.txt > grep_output16.txt
./s21_grep -ne "world" test.txt > s21_grep_output16.txt

if diff -q "grep_output16.txt" "s21_grep_output16.txt" > /dev/null; then
    echo "Test 16: success"
else
    echo "Test 16: fail"
fi

# TEST 17: Testing -se flag combination
grep -se "world" test.txt non_existent_file.txt > grep_output17.txt
./s21_grep -se "world" test.txt non_existent_file.txt > s21_grep_output17.txt

if diff -q "grep_output17.txt" "s21_grep_output17.txt" > /dev/null; then
    echo "Test 17: success"
else
    echo "Test 17: fail"
fi

# TEST 18: Testing -iv flag combination
grep -iv "world" test.txt > grep_output18.txt
./s21_grep -iv "world" test.txt > s21_grep_output18.txt

if diff -q "grep_output18.txt" "s21_grep_output18.txt" > /dev/null; then
    echo "Test 18: success"
else
    echo "Test 18: fail"
fi

# TEST 19: Testing -ic flag combination
grep -ic "world" test.txt > grep_output19.txt
./s21_grep -ic "world" test.txt > s21_grep_output19.txt

if diff -q "grep_output19.txt" "s21_grep_output19.txt" > /dev/null; then
    echo "Test 19: success"
else
    echo "Test 19: fail"
fi

# TEST 20: Testing -il flag combination
grep -il "world" test.txt > grep_output20.txt
./s21_grep -il "world" test.txt > s21_grep_output20.txt

if diff -q "grep_output20.txt" "s21_grep_output20.txt" > /dev/null; then
    echo "Test 20: success"
else
    echo "Test 20: fail"
fi

# TEST 21: Testing -in flag combination
grep -in "world" test.txt > grep_output21.txt
./s21_grep -in "world" test.txt > s21_grep_output21.txt

if diff -q "grep_output21.txt" "s21_grep_output21.txt" > /dev/null; then
    echo "Test 21: success"
else
    echo "Test 21: fail"
fi

# TEST 22: Testing -is flag combination
grep -is "world" test.txt non_existent_file.txt > grep_output22.txt
./s21_grep -is "world" test.txt non_existent_file.txt > s21_grep_output22.txt

if diff -q "grep_output22.txt" "s21_grep_output22.txt" > /dev/null; then
    echo "Test 22: success"
else
    echo "Test 22: fail"
fi

# TEST 23: Testing -vc flag combination
grep -vc "world" test.txt > grep_output23.txt
./s21_grep -vc "world" test.txt > s21_grep_output23.txt

if diff -q "grep_output23.txt" "s21_grep_output23.txt" > /dev/null; then
    echo "Test 23: success"
else
    echo "Test 23: fail"
fi

# TEST 24: Testing -vl flag combination
grep -vl "world" test.txt > grep_output24.txt
./s21_grep -vl "world" test.txt > s21_grep_output24.txt

if diff -q "grep_output24.txt" "s21_grep_output24.txt" > /dev/null; then
    echo "Test 24: success"
else
    echo "Test 24: fail"
fi

# TEST 25: Testing -vn flag combination
grep -vn "world" test.txt > grep_output25.txt
./s21_grep -vn "world" test.txt > s21_grep_output25.txt

if diff -q "grep_output25.txt" "s21_grep_output25.txt" > /dev/null; then
    echo "Test 25: success"
else
    echo "Test 25: fail"
fi

# TEST 26: Testing -vs flag combination
grep -vs "world" test.txt non_existent_file.txt > grep_output26.txt
./s21_grep -vs "world" test.txt non_existent_file.txt > s21_grep_output26.txt

if diff -q "grep_output26.txt" "s21_grep_output26.txt" > /dev/null; then
    echo "Test 26: success"
else
    echo "Test 26: fail"
fi

# TEST 27: Testing -cn flag combination
grep -cn "world" test.txt > grep_output27.txt
./s21_grep -cn "world" test.txt > s21_grep_output27.txt

if diff -q "grep_output27.txt" "s21_grep_output27.txt" > /dev/null; then
    echo "Test 27: success"
else
    echo "Test 27: fail"
fi

# TEST 28: Testing -cs flag combination
grep -cs "world" test.txt non_existent_file.txt > grep_output28.txt
./s21_grep -cs "world" test.txt non_existent_file.txt > s21_grep_output28.txt

if diff -q "grep_output28.txt" "s21_grep_output28.txt" > /dev/null; then
    echo "Test 28: success"
else
    echo "Test 28: fail"
fi

# TEST 29: Testing -ln flag combination
grep -ln "world" test.txt > grep_output29.txt
./s21_grep -ln "world" test.txt > s21_grep_output29.txt

if diff -q "grep_output29.txt" "s21_grep_output29.txt" > /dev/null; then
    echo "Test 29: success"
else
    echo "Test 29: fail"
fi

# TEST 30: Testing -ls flag combination
grep -ls "world" test.txt non_existent_file.txt > grep_output30.txt
./s21_grep -ls "world" test.txt non_existent_file.txt > s21_grep_output30.txt

if diff -q "grep_output30.txt" "s21_grep_output30.txt" > /dev/null; then
    echo "Test 30: success"
else
    echo "Test 30: fail"
fi

# TEST 31: Testing -ns flag combination
grep -ns "world" test.txt non_existent_file.txt > grep_output31.txt
./s21_grep -ns "world" test.txt non_existent_file.txt > s21_grep_output31.txt

if diff -q "grep_output31.txt" "s21_grep_output31.txt" > /dev/null; then
    echo "Test 31: success"
else
    echo "Test 31: fail"
fi

# TEST 32: Testing -ivc flag combination
grep -ivc "world" test.txt > grep_output32.txt
./s21_grep -ivc "world" test.txt > s21_grep_output32.txt

if diff -q "grep_output32.txt" "s21_grep_output32.txt" > /dev/null; then
    echo "Test 32: success"
else
    echo "Test 32: fail"
fi

# TEST 33: Testing -ivn flag combination
grep -ivn "world" test.txt > grep_output33.txt
./s21_grep -ivn "world" test.txt > s21_grep_output33.txt

if diff -q "grep_output33.txt" "s21_grep_output33.txt" > /dev/null; then
    echo "Test 33: success"
else
    echo "Test 33: fail"
fi

rm -f grep_output*.txt s21_grep_output*.txt

exit 0