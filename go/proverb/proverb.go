package proverb

import (
	"fmt"
)

var PROVERB_LINE_FORMAT = "For want of a %s the %s was lost."
var FINAL_LINE_FORMAT = "And all for the want of a %s."

func Proverb(rhyme []string) []string {
	if len(rhyme) == 0 {
		return []string{}
	}

	if len(rhyme) == 1 {
		return []string{fmt.Sprintf(FINAL_LINE_FORMAT, rhyme[0])}
	}

	proverb := make([]string, 0)

	for i := 0; i < len(rhyme) - 1; i++ {
		proverb = append(proverb, fmt.Sprintf(PROVERB_LINE_FORMAT, rhyme[i], rhyme[i + 1]))
	}

	proverb = append(proverb, fmt.Sprintf(FINAL_LINE_FORMAT, rhyme[0]))

	return proverb
}