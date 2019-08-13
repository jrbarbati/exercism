#include "anagram.h"

using namespace std;

vector<string> anagram::anagram::matches(vector<string> strings)
{
    vector<string> matches;
    map<char, int> base_counts = this->letter_counts(&this->word);

    for (string str : strings)
    {
        if (this->is_equal(&this->word, &str))
            continue;

        if (letter_counts(&str) == base_counts)
            matches.push_back(str);
    }

    return matches;
}

map<char, int> anagram::anagram::letter_counts(string *str)
{
    map<char, int> counts;

    for (char c : *str)
        counts[toupper(c)]++;

    return counts;
}

bool anagram::anagram::is_equal(string *wrd, string *str)
{
    if (wrd->size() != str->size())
        return false;

    for (unsigned long i = 0; i < wrd->size(); i++)
        if (toupper((*str)[i]) != toupper((*wrd)[i]))
            return false;

    return true;
}
