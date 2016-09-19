//Best yet
round(1000 * x) / 1000
//Example
var a = 123.4567
print(round(1000 * a) / 1000)

// Method 1
extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
// Example which returns Double rounded to 4 decimal places:
let x = Double(0.123456789).roundToPlaces(places:4)  // Swift 3 version

// Method 2
import UIKit
import Foundation
extension Double {
    var roundTo2f: Double {return Double(round(100*self)/100)  }
    var roundTo3f: Double {return Double(round(1000*self)/1000) }
}
let regularPie:  Double = 3.14159
var smallerPie:  Double = regularPie.roundTo3f  // results 3.142
var smallestPie: Double = regularPie.roundTo2f  // results 3.14

// Method 3
import Foundation
@warn_unused_result func round(x: Double) -> Double
let roundedValue1 = round(0.6844 * 1000) / 1000
let roundedValue2 = round(0.6849 * 1000) / 1000
print(roundedValue1) // returns 0.684
print(roundedValue2) // returns 0.685
