// Package clock contains methods for clock type creation/manipulation.
package clock

import "fmt"

const minutesPerDay = 1440;

// Clock type holds the time of day.
type Clock int

// New creates a new clock with the given time.
func New(hours, minutes int) Clock {
	minutes = (hours*60 + minutes) % minutesPerDay

	for minutes < 0 {
		minutes += minutesPerDay
	}

	for minutes > minutesPerDay {
		minutes -= minutesPerDay
	}

	return Clock(minutes)
}

// String returns a string representatoin of the clock.
func (clock Clock) String() string {
	return fmt.Sprintf("%02v:%02v", int(clock)/60, int(clock)%60)
}

// Add increases the current time of the clock by the number of minutes.
func (clock Clock) Add(minutes int) Clock {
	return New(0, int(clock)+minutes)
}

// Subtract reduces the current time of the clock by the number of minutes.
func (clock Clock) Subtract(minutes int) Clock {
	return clock.Add(-minutes)
}
