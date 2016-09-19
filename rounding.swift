extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}


// Example which returns Double rounded to 4 decimal places:
let x = Double(0.123456789).roundTo(places: 4)  // Swift 3 version
