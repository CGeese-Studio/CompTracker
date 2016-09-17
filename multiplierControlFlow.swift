// Control flow for multiplier calculation 
var quota = 19.25 
var percentToGoal = 1.3 
var multiplier = 0.0 

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
print("Your current multiplier is: \(multiplier) ")
