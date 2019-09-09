
/* 
 *
 * fasta.h
 *
 * Interface for validating fasta files.
 *
 * Rob Edwards, January 2019.
 *
 */

#ifndef FASTA_H
#define FASTA_H

/*
 * the maximum line length of the sequence that we'll read
 * I don't have any idea what this should be, so I set it to
 * 10,000
 * 
*/

#define MAXLINELEN 10000

/*
 * This is the maxiumum number of entries in the 
 * hash table. It is probably good to optimize this.
 */

#define NUMSEQS 1000003

/*
 * This is a method to test whether the sequence
 * contains non-sequence characters. But we define sequence
 * as anything essentially [A-Z][a-z].
 *
 * We have had people submit php code as fasta files!
 */
int contains_non_word_characters(char *seq, int verbose);


#endif /* FASTA_H */
