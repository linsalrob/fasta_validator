# fasta_validator

This is simple C code to validate a fasta file. It only checks a few things, and by default only sets its response via the return code, so you will need to check that!

The simple rules that we adhere to are:

1. Each header line starts with a `>`. The header preceedes the sequence.
2. Every other line is considered a sequence line
3. Sequence lines may not contain whitespace, numbers, or non-sequence characters. In other words, they must only contain the characters [A-Z] and [a-z]
4. Sequence lines can end with a new line or return depending on whether you have edited this file on a mac, pc, or linux machine.
5. Sequence lines can be empty.
6. The sequence identifier is the string of characters in the header line following the `>` and upto the first whitespace. Everything after the first whitespace is descriptive, and can be as long as you like
7. Each sequence identifier must be unique within the fasta file.

We will exit with the following return codes:

* `0` this is a valid fasta file
* `1` the first line does not start with a > (rule 1 violated).
* `2` there are duplicate sequence identifiers in the file (rule 7 violated)
* `4` there are characters in a sequence line other than [A-Za-z]

Other exit codes (e.g. 255, 254, etc) indicate internal errors in the program.

# Prerequisites

The only prerequisite is ANSI C.

# Installation

To clone the code from GitHub use:

```bash
git clone https://github.com/linsalrob/fasta_validator.git
cd fasta_validator
```

To build the code, use:

```bash
make
```

This will compile the source into an executable in the current working directory.

To install this code as root (sudo) you can use:

```bash
make install
```

and this will copy the executable to `/usr/local/bin`.

to install it as a user, just copy the compiled binary `fasta_validate` to somewhere on your path.


# Testing

To test the code, please use

```bash
make test
```

or 

```bash
bash test.sh
```

This tests the code against both valid and invalid fasta files provided in the [test/](test/) directory.


# Citation

Please cite this as 

Edwards, R.A. 2019. fasta_validate: a fast and efficient fasta validator written in pure C. DOI: 10.5281/zenodo.2532044
[![DOI](https://zenodo.org/badge/164130774.svg)](https://zenodo.org/badge/latestdoi/164130774)


# License

This software is released using the [MIT License](LICENSE)


