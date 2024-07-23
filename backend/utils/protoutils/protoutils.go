package protoutils

import "google.golang.org/protobuf/types/known/wrapperspb"

func StringToNullableString(s *string) *wrapperspb.StringValue {
	if s == nil {
		return nil
	}
	return &wrapperspb.StringValue{Value: *s}
}
