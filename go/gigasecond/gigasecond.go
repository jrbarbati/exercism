package gigasecond

import "time"

var GIGASECOND time.Duration = 1000000000

func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Second * GIGASECOND)
}
