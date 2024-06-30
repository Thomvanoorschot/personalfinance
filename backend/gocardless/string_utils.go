package gocardless

import (
	"strings"
	"unicode"
)

func FormatRemittanceData(rm []string) string {
	var builder strings.Builder

	for i, item := range rm {
		if i > 0 && unicode.IsUpper(rune(item[0])) && len(rm) > 1 {
			if len(rm[i-1]) != 32 || !unicode.IsUpper(rune(rm[i-1][31])) {
				builder.WriteString("\n")
			}
		}
		builder.WriteString(item)
	}

	return builder.String()
}
