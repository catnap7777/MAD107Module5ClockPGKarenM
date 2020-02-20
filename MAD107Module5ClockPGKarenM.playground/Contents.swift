import Cocoa

var str = "Hello, playground"
//.. variables for date/time current
var currentDate = Date()
var currentCalendar = Calendar.current
//.. variables for date/time temp
var tempDate = Date()
var tempCalendar = Calendar.current
var tempHours = 0
var tempMinutes = 0
var tempSeconds = 0

var formattedHours = 0

// *** Get Individual components from date ***
var currentHours = currentCalendar.component(.hour, from: currentDate)
var currentMinutes = currentCalendar.component(.minute, from: currentDate)
var currentSeconds = currentCalendar.component(.second, from: currentDate)

//.. function to get current date/time -> pass back tuple with this info
func getMyDateTime() -> (oHours:Int, oMinutes:Int, oSeconds:Int) {
    
    currentDate = Date()
    currentCalendar = Calendar.current
    
    currentHours = currentCalendar.component(.hour, from: currentDate)
    currentMinutes = currentCalendar.component(.minute, from: currentDate)
    currentSeconds = currentCalendar.component(.second, from: currentDate)
    
    let retTuple = (currentHours, currentMinutes, currentSeconds)
    return retTuple
    
}

print("**** Clock with Current Time ****\n")

//.. loop to run for a reasonable amount of times to print out "clock" values
for _ in (1...10000) {
    
    tempHours = currentHours
    tempMinutes = currentMinutes
    tempSeconds = currentSeconds
    
    //.. call function
    var t = getMyDateTime()
    
    //.. check to see if hh, mm, ss are different from previous call.. if they are, the time "changed".. so print the line
    if (t.oHours != tempHours) || (t.oMinutes != tempMinutes) || (t.oSeconds != tempSeconds) {
       
        //.. "convert" hours so that military time is NOT shown
        if t.oHours > 12 {
            formattedHours = t.oHours - 12
        }
        
        print("****  \(formattedHours) : \(t.oMinutes) : \(t.oSeconds)")
        
    }
}


