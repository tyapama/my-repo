package main

import "testing"

func TestEvenOrOdd(t *testing.T) {
	tests := []struct {
		name string
		number int
		expected string
	}{
		{"even", 2, "even"},
		{"odd", 3, "odd"},
	}
	
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			result := EvenOrOdd(test.number)
			if result != test.expected {
				t.Errorf("Expected %s, but got %s", test.expected, result)
			}
		})
	}
}