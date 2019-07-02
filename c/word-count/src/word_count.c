#include "word_count.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>

char *delimit_string(const char *input_text, const char delimiter);

char *to_lower_case(char *string);

int find_word(char *cleaned_input, char *word, int start_index);

int add_word_to(word_count_word_t *words, int word_count, char *word);

bool is_contraction(const char *input_text, int i);

word_count_word_t *zero_out(word_count_word_t *words);

const char DELIMITER = '\t';

int word_count(const char *input_text, word_count_word_t *words)
{
    int curr_index = 0, word_count = 0;
    char *cleaned_input = to_lower_case(delimit_string(input_text, DELIMITER));
    words = zero_out(words);

    for (int i = 0; ; i++)
    {
        char *word = calloc(MAX_WORD_LENGTH + 1, sizeof(char));

        curr_index = find_word(cleaned_input, word, curr_index);

        if (strcmp(word, "") == 0)
            break;

        if (curr_index == -1)
            return -1;

        word_count = add_word_to(words, word_count, word);
        free(word);
    }

    free(cleaned_input);

    return word_count > MAX_WORDS ? -2 : word_count;
}

/*
 * Takes in a string and replaces all non-alphanumeric chars with a tab
 * (except single quotes.)
 * This is to make separating the words from the "main string" easier.
 */
char *delimit_string(const char *input_text, const char delimiter)
{
    int i, j = 0;
    char *delimited_string = calloc(1000, sizeof(char));

    for (i = 0; input_text[i]; i++)
    {
        if (isalnum(input_text[i]) || is_contraction(input_text, i))
            delimited_string[j++] = input_text[i];

        else if (isalnum(input_text[i - 1]) && !isalnum(input_text[i]))
            delimited_string[j++] = delimiter;
    }

    return delimited_string;
}

bool is_contraction(const char *input_text, int i)
{
    if (i == 0)
        return false;

    return isalnum(input_text[i - 1]) && input_text[i] == '\'' && isalnum(input_text[i + 1]);
}

/*
 * Lower-cases all alpha chars
 */
char *to_lower_case(char *string)
{
    for (int i = 0; string[i]; i++)
        if (isalpha(string[i]))
            string[i] = tolower(string[i]);

    return string;
}

/*
 * Since words is reused in the tests, we should clean it out and re-zero
 * all the values
 */
word_count_word_t *zero_out(word_count_word_t *words)
{
    for (int i = 0; i < MAX_WORDS; i++)
    {
        memset(words[i].text, '\0', MAX_WORD_LENGTH + 1);
        words[i].count = 0;
    }

    return words;
}

/*
 * char *cleaned_input -- input string to parse out the words
 * char *word -- OUT PARAM -- this is where we will place chars for the word
 * Returns an int
 *      EITHER the next index to start for the next word
 *      OR -1 if the word is too long.
 */
int find_word(char *cleaned_input, char *word, int start_index)
{
    int i = 0, j = 0;

    for(i = start_index; cleaned_input[i]; i++)
    {
        if (i - start_index > MAX_WORD_LENGTH)
            return -1;

        if (cleaned_input[i] == DELIMITER)
            break;

        word[j++] = cleaned_input[i];
    }

    return i + 1;
}

/*
 * Adds word to words array and increments count if needed
 * Returns the new word count
 */
int add_word_to(word_count_word_t *words, int word_count, char *word)
{
    for (int i = 0; i < word_count; i++)
        if (strcmp(word, words[i].text) == 0)
        {
            words[i].count++;
            return word_count;
        }

    strncpy(words[word_count].text, word, MAX_WORD_LENGTH + 1);
    words[word_count].count = 1;

    return word_count + 1;
}
