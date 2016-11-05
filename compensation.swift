// SEARCH THE WORD EDIT TO FIND ALL VALUES USED FOR TESTING, DO NOT MODIFY ANYTHING THAT ISNT COMMENTED AS "EDIT FOR TESTING"
// Import Foundation for function support
import Foundation
// Declare position and quota
// Edit position and quota for testing
var position: String = ""
var quota: Double = 0.0
// Declare variables for each activation type
// Edit all activations for testing
var newActs: Double = 0.0
var upgrade: Double = 0.0
var tablet: Double = 0.0
var prepaid: Double = 0.0
var spc: Double = 0.0
var mbb: Double = 0.0
// Declare variables for total activation count, values and percent to goal
var totalActs: Double = (newActs + upgrade + tablet + prepaid + spc + mbb)
var actValue: Double = (newActs) + ((upgrade + tablet + prepaid + spc + mbb) * 0.75)
var percentToGoal: Double = (actValue / quota)
// Declare variabes for activation type percentage of total
var newMix: Double = (newActs / totalActs)
var upMix: Double = (upgrade / totalActs)
var tabMix: Double = (tablet / totalActs)
var preMix: Double = (prepaid / totalActs)
var spcMix: Double = (spc / totalActs)
var mbbMix: Double = (mbb / totalActs)
// Declare variables for TEP attachment
// Edit tep for testing
var tep: Double = 0.0
var tepOpp: Double = 0.0 // will be incremented within app
var tepAttach: Double = (tep / tepOpp)
// Declare variable for accessory sales total
// Edit accy for testing
var accy: Double = 0.0
// Declare variable for Accessory Per Handset average
var aph: Double = (accy / totalActs)
var aphGoal: Double = (totalActs * 75.00)
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
// Declare variable for Sprint Promoter Score
// Edit sps for testing
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
// Add statements to test proper functionality, TODO: add round function for percentages and currencies
// position and targets
print("As a(n) \(position), you have a commission target of $\(fullComp).")
print("Of that target $\(actTic) is comprised of activations and $\(accTic) is comprised of accessory sales.")
print("You have an accessory sales goal of $\(accGoal).")
// quota statement
if (quota >= 10) {
  print("With a quota of \(quota), you are eligible for incentive multipliers.")
} else {
  print("With a quota of \(quota), you are not eligible for incentive multipliers.")
}
// activations count
print("Your current activations total \(totalActs), with a compensations value of \(actValue).")
print("Bringing you \(percentToGoal)% to goal totaling $\(actPayout) towards compensation.")
// Over / under quota statement
if (actValue < quota) { 
  print("You are currently \(quota - actValue) activations away from reaching Quota")
} else {
  print("you are currently \(actValue - quota) activations over your Quota")
}
// tep statements 
print("Of those activations your TEP attachment rate is \(tepAttach)%.")
// multiplier
print("Your current incentive multiplier is \(multiplier).")
// activation mix statements 
print("Of those activations \(newMix)% are Gross New Adds, \(upMix)% are upgrades, \(tabMix)% are tablets, \(preMix)% are prepaid, \(spcMix)% are Sprint Phone Connect, \(mbbMix)% are Mobile Broadband.")
// accessory sales
print("You are currently at $\(accy) in accessory sales which is \(accy / accGoal)% to goal.")
print("Totaling $\(accPayout) towards your compensation.")
// accessory targets
if (accy < accyGoal) { 
  print("You are currently $\(accyGoal - accy) away from reaching your Accessory Goal")
} else { 
  print("You are currently $\(accy - accyGoal) above your Accessory Goal")
}
// aph statements
print("Your current APH is $\(aph).")
print("Your APH Goal is currently $\(aphGoal)")
if (aph >= aphGoal) {
  print("Based on your APH you have reqched the $75 per handset average at $\(aph)")
} else {
  print("You currently need $\(aphGoal - accy) to reach the $75 per handset goal")
// sps statements
if (sps >= 76.0) {
  print("Bassed on your SPS of \(sps), you do not have a 10% decelerated payout.")
  print("Your total Gross Payout is $\(grossPayout), after $\(taxPaid) is taken out in taxes you will take home $\(netPayout).")
} else {
  print("Because your SPS is less than the target 76% your compensation is decelerated by 10%.")
  print("Your total Gross Payout is $\(decelGrossPayout), after $\(decelTaxPaid) is taken out in taxes you will take home $\(decelNetPayout)")
}
