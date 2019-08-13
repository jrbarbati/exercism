#ifndef ANAGRAM_H
#define ANAGRAM_H

#include <string>
#include <vector>
#include <map>

namespace anagram {

    class anagram {
    private:
        std::string word;

        std::map<char, int> letter_counts(std::string *str);
        bool is_equal(std::string *wrd, std::string *str);
    public:
        anagram(std::string word)
        {
            this->word = word;
        }

        std::vector<std::string> matches(std::vector<std::string> strings);

    };
}

#endif