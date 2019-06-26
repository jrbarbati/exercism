// Package scale implements method(s) revolving around musical scales
package scale

import (
	"strings"
)

type Scle []string

func (scale Scle) indexOf(note string) int {
	for index, tone := range scale {
		if tone == note {
			return index
		}
	}

	return -1
}

func (scale Scle) step(note, step string) string {
	if step == "m" {
		return scale.minorStep(note)
	} else if step == "M" {
		return scale.majorStep(note)
	} else {
		return scale.augmentedStep(note)
	}
}

func (scale Scle) minorStep(note string) string {
	return scale[(scale.indexOf(note) + 1) % len(scale)]
}

func (scale Scle) majorStep(note string) string {
	return scale[(scale.indexOf(note) + 2) % len(scale)]
}

func (scale Scle) augmentedStep(note string) string {
	return scale[(scale.indexOf(note) + 3) % len(scale)]	
}

func (scale Scle) fullScale(note string) []string {
	return append(scale[scale.indexOf(note):], scale[:scale.indexOf(note)]...)
}

var sharps = Scle([]string{"A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"})
var flats = Scle([]string{"A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab"})

// Function Scale takes in a tonic (starting note) and an interval
// Returns a []string representing the scale.
func Scale(tonic, interval string) []string {
	chromatic := determineChromatic(tonic)
	tonic = upperFirstChar(tonic)

	return buildScale(tonic, interval, chromatic)
}

func buildScale(currNote, interval string, chromatic Scle) []string {
	if interval == "" {
		return chromatic.fullScale(currNote)
	}

	scale := make([]string, 0)

	for _, step := range strings.Split(interval, "") {
		scale = append(scale, currNote)
		currNote = chromatic.step(currNote, step)
	}

	return scale
}

func determineChromatic(tonic string) Scle {
	switch tonic {
	case "G", "D", "A", "E", "B", "F#", "e", "b", "f#", "c#", "g#", "d#":
		return sharps
	case "F", "Bb", "Eb", "Ab", "Db", "Gb", "d", "g", "c", "f", "bb", "eb":
		return flats
	default:
		return sharps
	}
}

func upperFirstChar(value string) string {
	if len(value) == 1 {
		return strings.ToUpper(value)
	}

	return strings.ToUpper(value[0:1]) + value[1:]
}