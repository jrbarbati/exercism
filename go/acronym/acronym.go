package acronym

import (
	"fmt"
	"strings"
	"regexp"
)

func Abbreviate(value string) string {
	abbreviation := ""
	regex := regexp.MustCompile(`[A-Za-z\s]`)
	regexedString := regex.FindAllString(strings.Replace(value, "-", " ", -1), -1)

	for i, _ := range regexedString {
		if shouldBePartOfAbbreviation(regexedString, i) {
			abbreviation += strings.ToUpper(regexedString[i])
		}
	}

	return abbreviation
}

func shouldBePartOfAbbreviation(value []string, index int) bool {
	return index == 0 || (value[index-1] == " " && isALetter(value[index]))
}

func isALetter(value string) bool {
	letters := "abcdefghijklmnopqrstuvwxyz"
	return strings.ContainsAny(value, fmt.Sprintf("%s%s", letters, strings.ToUpper(letters)))
}
