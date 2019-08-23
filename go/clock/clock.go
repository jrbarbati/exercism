// Package clock contains methods for clock struct creation/manipulation.
package clock

import "fmt"

// Clock struct holds the time of day.
type Clock struct {
	minutes int
}

// New creates a new clock with the given time.
func New(hours, minutes int) Clock {
	mins := (hours*60 + minutes) % 1440

	for mins < 0 || 1440 < mins {
		if mins < 0 {
			mins += 1440
		}

		if mins > 1440 {
			mins -= 1440
		}
	}

	return Clock{mins}
}

// String returns a string representatoin of the clock.
func (clock Clock) String() string {
	return fmt.Sprintf("%02v:%02v", (clock.minutes/60)%24, clock.minutes%60)
}

// Add increases the current time of the clock by the number of minutes.
func (clock Clock) Add(minutes int) Clock {
	return New(0, clock.minutes+minutes)
}

// Subtract reduces the current time of the clock by the number of minutes.
func (clock Clock) Subtract(minutes int) Clock {
	return clock.Add(-minutes)
}
