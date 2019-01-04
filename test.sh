#!/bin/bash

# code to test fasta validate

echo "Testing a good fasta file. Should return 0"
./fasta_validate test/good.fasta;
echo "Returned: $?"

echo "Testing another good fasta file. Should return 0"
./fasta_validate test/good_mixed.fasta;
echo "Returned: $?"

echo "Testing the lsat good fasta file. Should also return 0"
./fasta_validate test/good_multiline.fasta
echo "Returned: $?"

echo -e "\nThese command should give error messages. We have turned on verbose so you can see:"
echo "A fasta file with no > on the first line";
./fasta_validate -v test/no_first_line.fasta
echo "Returned: $?"

echo "A fasta file with spaces in the sequence"
./fasta_validate -v test/space.fasta
echo "Returned: $?"

echo "A fasta file with duplicate ids"
./fasta_validate -v test/duplicates_no_spaces.fasta
echo "Returned: $?"

echo "A fasta file with duplicate ids even though there are spaces"
./fasta_validate -v test/duplicates_with_spaces.fasta
echo "Returned: $?"

echo "A fasta file with php code in the middle. Yes, we've seen this!"
./fasta_validate -v test/code.fasta
echo "Returned: $?"


