import Cocoa

var str = "Hello, playground"

var currentDate = Date()
var currentCalendar = Calendar.current

var tempDate = Date()
var tempCalendar = Calendar.current
var tempHours = 0
var tempMinutes = 0
var tempSeconds = 0

var formattedHours = 0

// *** Get components using current Local & Timezone ***
//print(currentCalendar.dateComponents([.year, .month, .day, .hour, .minute], from: currentDate))

// *** define calendar components to use as well Timezone to UTC ***
//currentCalendar.timeZone = TimeZone(identifier: "UTC")!

// *** Get All components from date ***
//var components = currentCalendar.dateComponents([.hour, .year, .minute], from: currentDate)
//print("All Components : \(components)")

// *** Get Individual components from date ***
var currentHours = currentCalendar.component(.hour, from: currentDate)
var currentMinutes = currentCalendar.component(.minute, from: currentDate)
var currentSeconds = currentCalendar.component(.second, from: currentDate)
//print("\(currentHours):\(currentMinutes):\(currentSeconds)")


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

for _ in (1...10000) {
    
    tempHours = currentHours
    tempMinutes = currentMinutes
    tempSeconds = currentSeconds
    
    var t = getMyDateTime()
    
    if (t.oHours != tempHours) || (t.oMinutes != tempMinutes) || (t.oSeconds != tempSeconds) {
        
        if t.oHours > 12 {
            formattedHours = t.oHours - 12
        }
        
        print("****  \(formattedHours) : \(t.oMinutes) : \(t.oSeconds)")
    
        
    }
    
}


