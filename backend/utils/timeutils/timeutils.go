package timeutils

import "time"

func AmountOfDays(start, end time.Time) int {
	duration := end.Sub(start)
	days := int(duration.Hours()/24) + 1

	return days
}

func StripTime(t time.Time) time.Time {
	return time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, t.Location())
}
