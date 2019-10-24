//Package allergies contains methods related to finding out to what a patient is allergic.
package allergies

var allergies = map[string]uint{
	"eggs":         1,
	"peanuts":      2,
	"shellfish":    4,
	"strawberries": 8,
	"tomatoes":     16,
	"chocolate":    32,
	"pollen":       64,
	"cats":         128,
}

var allergiesList = []string{"eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"}

// Allergies takes a score and calculates a list of allergies.
func Allergies(score uint) []string {
	allergicTo := make([]string, 0)

	for _, allergy := range allergiesList {
		if AllergicTo(score, allergy) {
			allergicTo = append(allergicTo, allergy)
		}
	}

	return allergicTo
}

// AllergicTo uses the score to decide if the patient is allergic to the substance.
func AllergicTo(score uint, substance string) bool {
	return allergies[substance]&score > 0
}
