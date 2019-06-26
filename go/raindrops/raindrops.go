// Package raindrops
package raindrops

// Convert takes an integer input and converts it to 'raindrop-speak'
func Convert(input int) string {
	return Raindrop(input).speak()
}