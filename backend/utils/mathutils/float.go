package mathutils

import "math"

func AddFloat64(a, b float64) float64 {
	factor := 1000000.0

	aInt := int64(math.Round(a * factor))
	bInt := int64(math.Round(b * factor))

	sumInt := aInt + bInt

	sumFloat := float64(sumInt) / factor

	return sumFloat
}
