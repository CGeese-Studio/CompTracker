// Declare program run variables, position, quota, acts, and accy can be edited to test functionality
import Foundation
var position = "LRC"
var quota = 20.0
var acts = 10.0
var accy = 1031.25
// Do not edit these variables
var multiplier = 0.0
var percentToGoal = acts/quota
var fullComp = 0.0
var actTic = 0.0
var accyTic = 0.0
var accyGoal = 0.0
// sets apropriate TIC amounts based on position
if position == "LRC" {
    fullComp = 825.00
    actTic = 701.25
    accyTic = 123.75
    accyGoal = 2062.50
} else if position == "FTRC" {
    fullComp = 780.00
    actTic = 663.00
    accyTic = 117.00
    accyGoal = 1950.00
} else if position == "PTRC" {
    fullComp = 390.63
    actTic = 332.0355
    accyTic = 58.5945
    accyGoal = 980.00
} else {
    print("Please Enter A Valid Value")
}
// these print statements represent a placeholder to test proper TIC assignment
print("Your position is: \(position)")
print("Your full Commission should be: $\(fullComp)")
print("Your Activations comp should be: $\(actTic)")
print("Your Accessory comp should be: $\(accyTic)")
print("With an Accessory goal of: $\(accyGoal)")
// multiplier control flow, multiplier is determined by quota attainment
// A quota of <10 locks the multiplier at 1.0 for anything above 100%
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
 	  	case 0.70...0.79 :
  	  		multiplier = 0.50
  	  	case 0.50...0.69 :
  	  		multiplier = 0.50
  	  	default :
  	  		multiplier = 0.0
  	}
} else {
 	switch percentToGoal {
  		case 1.0...100.00 :
  			multiplier = 1.0
  		case 0.80...0.99 :
  			multiplier = 0.70
  		case 0.70...0.79 :
  			multiplier = 0.50
  		case 0.50...0.69 :
  			multiplier = 0.50
  		default :
  			multiplier = 0.0
  		}
  	}
// this print statement tests proper multiplier assignment.
print("Your current multiplier is: \(multiplier)")
// calculates payout amounts bases on user input, the print statemts are placeholders to test proper calculations
var actPayout = (multiplier*actTic*percentToGoal)
print("your current activation payout: $\((round(100 * actPayout) / 100))")
var accyPayout = (accy*0.06)
print("Your current Accessory payout: $\((round(100 * accyPayout) / 100))")
var totalComp = (actPayout+accyPayout)
print("Your current commission totals: $\((round(100 * totalComp) / 100))")
var taxPaid = (totalComp*0.34)
print("Money the Federal Government is taking: $\((round(100 * taxPaid) / 100))")
var compPaid = (totalComp-taxPaid)
print("You will take home: $\((round(100 * compPaid) / 100))")
//will compare current values to goals and provide the difference as a target
if acts < quota {
  print("You currently need \(quota-acts) to hit your activation goal.")
} else if acts == quota {
    print("You have reached your quota!")
} else {
    print("You are currently \(acts-quota) activations over your quota.")
}
if accy < accyGoal {
  print("You are currently $\(accyGoal-accy) away from your accessory goal.")
} else if accy == accyGoal {
    print("You have reached your accessory goal!")
} else {
    print("You are currently $\(accy-accyGoal) over your target.")
}
var attainment = ((totalComp / fullComp) * 100)
print("You are now \((round(attainment * 100) / 100))% to goal.")
