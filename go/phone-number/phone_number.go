package phonenumber

import (
	"errors"
	"fmt"
	"regexp"
	"strings"
)

func Number(input string) (string, error) {
	regex := regexp.MustCompile("[^\\d]")

	rawNumber := regex.ReplaceAllString(input, "")
	numberLen := len(rawNumber)

	if numberLen > 11 {
		return "", errors.New("more than 11 digits")
	}

	if numberLen < 10 {
		return "", errors.New("incorrect number of digits")
	}

	if len(rawNumber) == 11 && !countryCodeIsOne(rawNumber) {
		return "", errors.New("11 digits must start with 1")
	}

	if numberLen == 11 {
		rawNumber = rawNumber[1:]
	}

	if areaCodeStartsWith(rawNumber, "0") {
		return "", errors.New("area code cannot start with zero")
	}

	if areaCodeStartsWith(rawNumber, "1") {
		return "", errors.New("area code cannot start with one")
	}

	if exchangeCodeStartsWith(rawNumber, "0") {
		return "", errors.New("exchange code cannot start with zero")
	}

	if exchangeCodeStartsWith(rawNumber, "1") {
		return "", errors.New("exchange code cannot start with one")
	}

	return rawNumber, nil
}

func AreaCode(input string) (string, error) {
	cleanedNumber, err := Number(input)

	if err != nil {
		return "", err
	}

	return cleanedNumber[0:3], nil
}

func Format(input string) (string, error) {
	cleanedNumber, err := Number(input)

	if err != nil {
		return "", err
	}

	areaCode, _ := AreaCode(cleanedNumber)

	return fmt.Sprintf("(%s) %s-%s", areaCode, cleanedNumber[3:6], cleanedNumber[6:]), nil
}

func countryCodeIsOne(phoneNumber string) bool {
	return strings.Index(phoneNumber, "1") == 0
}

func areaCodeStartsWith(phoneNumber string, startOfAreaCode string) bool {
	return strings.Index(phoneNumber, startOfAreaCode) == 0
}

func exchangeCodeStartsWith(phoneNumber string, startOfExchangeCode string) bool {
	return strings.Index(phoneNumber, startOfExchangeCode) == 3
}
