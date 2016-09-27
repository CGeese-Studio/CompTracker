// Placeholder for an updated comptracker script
// Import Foundation for functions
import Foundation
// Declare position and quota
var position: String = ""
var quota: Double = 0.0
// Declare variables for each activation type
var newActs: Double = 0.0
var upgrade: Double = 0.0
var tablet: Double = 0.0
var prepaid: Double = 0.0
var spc: Double = 0.0
var mbb: Double = 0.0
// Declare variables for total activation count, values and percent to goal
var totalActs: Double = (newActs + upgrade + tablet + prepaid + spc + mbb)
var actValue: Double = (newActs) + ((upgrade + tablet + prepaid + spc + mbb) * 0.75)
var percentToGoal: Double = (totalActs / quota)
// Declare variabes for new activation and tablet percentage
var newMix: Double = (newActs / totalActs)
var tabMix: Double = (tablet / totalActs)
// Declare variables for TEP attachment
var tep: Double = 0.0
var tepOpp: Double = totalActs
var tepAttach: Double = (tepOpp / tep)
// Declare variable for accessory sales total
var accy: Double = 0.0
// Declare variable for Accessory Per Handset average
var aph: Double = (accy / totalActs)
// Declare TIC variables and assignment control flow
var fullComp: Double = 0.0
var actTic: Double = 0.0
var accTic: Double = 0.0
var accGoal: Double = 0.0
if position == "LRC" {
  fullComp = 825.00
  actTic = 701.25
  accTic = 123.75
  accGoal = 2062.50
} else if position == "FTRC" {
  fullComp = 780.00
  actTic = 663.00
  accTic = 117.00
  accGoal = 1950.00
} else if position == "PTRC" {
  fullComp = 390.63
  actTic = 332.04
  accTic = 58.60
  accGoal = 980.00
} else {
  print("Please enter a valid value.")
}
// Declare variables and control flow for multiplier assignment, multiplier locked at 1.0 if quota < 10
var multiplier: Double = 0.0
if (quota >= 10.0){
  switch percentToGoal {
    case 1.60...100.00 :
      multiplier = 1.45
    case 1.30...1.59 :
      multiplier = 1.25
    case 1.10...1.29 :
      multiplier = 1.1
    case 1.00...1.09 :
      multiplier = 1.0
    case 0.80...0.99 :
      multiplier = 0.70
    case 0.50...0.79 :
      multiplier = 0.50
    default :
      multiplier = 0.0
  }
} else {
  switch percentToGoal {
    case 1.00...100.00 :
      multiplier = 1.0
    case 0.80...0.99 :
      multiplier = 0.70
    case 0.50...0.79 :
      multiplier = 0.50
    default :
      multiplier = 0.0
  }
}
// Declaure variable for Sprint Promoter Score
var sps: Double = 0.0
// Declare variables for taxes and payouts accounting for SPS 10% decelerator
var actPayout: Double = (actTic * percentToGoal * multiplier)
var accPayout: Double = (accy * 0.06)
var tax: Double = 0.34
// SPS contengient payouts
var grossPayout: Double = 0.0
var taxPaid: Double = 0.0
var netPayout: Double = 0.0
var decelGrossPayout: Double = 0.0
var decelTaxPaid: Double = 0.0
var decelNetPayout: Double = 0.0
if (sps >= 76.0) {
  grossPayout = (actPayout + accPayout)
  taxPaid = (grossPayout * tax)
  netPayout = (grossPayout - taxPaid)
} else {
  decelGrossPayout = ((actPayout + accPayout) * 0.90)
  decelTaxPaid = (decelGrossPayout * tax)
  decelNetPayout = (decelGrossPayout - decelTaxPaid)
}
// Add statements to test proper functionality
