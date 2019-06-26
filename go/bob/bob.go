package bob

import (
	"fmt"
	"strings"
)

func Hey(remark string) string {
	trimmed := strings.TrimSpace(remark)

	if trimmed == "" {
		return "Fine. Be that way!"
	} else if isQuestion(trimmed) && isAllCaps(trimmed) && hasLetters(trimmed) {
		return "Calm down, I know what I'm doing!"
	} else if isQuestion(trimmed) {
		return "Sure."
	} else if isAllCaps(trimmed) && hasLetters(trimmed) {
		return "Whoa, chill out!"
	} else {
		return "Whatever."
	}
}

func isQuestion(value string) bool {
	return strings.HasSuffix(value, "?")
}

func isAllCaps(value string) bool {
	return value == strings.ToUpper(value)
}

func hasLetters(value string) bool {
	allLetters := "abcdefghijklmnopqrstuvwxyz"
	return strings.ContainsAny(value, fmt.Sprintf("%s%s", allLetters, strings.ToUpper(allLetters)))
}