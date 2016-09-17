// snippet for compiling comp payout
// uses these variables, we will asssume LRC position
var actPayout = (multiplier*actTic*percentToGoal)
print("your current activation payout: $\(actPayout)")
var accyPayout = (accy*0.06)
print("Your current Accessory payout: $\(accyPayout)")
var totalComp = (actPayout+accyPayout)
print("Your current commission totals: $\(totalComp)")
var taxPaid = (totalComp*0.34)
print("Money the Federal Government is taking: $\(taxPaid)")
var compPaid = (totalComp-taxPaid)
print("You will take home: $\(compPaid)")
