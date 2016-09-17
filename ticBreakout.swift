// Position input will determine TIC ammounts in the program 
 
var position = "LRC"  
var fullComp = 0.0 
var actTic = 0.0 
var accyTic = 0.0 
var accyGoal = 0.0 
  
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
print("Your position is: \(position)") 
print("Your full Commission should be: $\(fullComp)") 
print("Your Activations comp should be: $\(actTic)") 
print("Your Accessory comp should be: $\(accyTic)") 
print("With an Accessory goal of: $\(accyGoal)") 
