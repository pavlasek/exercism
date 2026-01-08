// Package weather provides functionality to get a current weather condition
// at a current location.
package weather

var (
	// CurrentCondition variable stores a condition at the location and can be passed into the Forecast function.
	CurrentCondition string 
	// CurrentLocation variable stores a location and can be passed into the Forecast function.
	CurrentLocation  string 
)

// Forecast return a string message representing the weather
// condition at the given city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
