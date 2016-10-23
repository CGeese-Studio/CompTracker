//Position Based Variables
var position: String = //Employee Position
var quota: Double = //Employee Quota

//Activation Tracking Variables
var newActs: Double = //New Activations
var upgrades: Double = //Upgrade Activations
var tablets: Double =  //Tablet Activations
var prepaids: Double = //Prepaid Activations
var spc: Double =  //Sprint Phone Connect Activations
var mbb: Double = //Mobile Broadband Activations

//Activation Totals Variables
var totalActs: Double = //Total Number of Activations
var actValue: Double = //Total Activation Value

//Percent To Goal Variable
var percentToGoal: Double = (actValue/quota) //Employee Percent To Goal

//Activation Mix Variables
var newMix: Double = (newActs/totalActs) //Percentage of new activations
var upMix: Double = (upgrades/totalActs) //Percentage of upgrade activations
var tabMix: Double = (tablets/totalActs) //Percentage of tablet activations
var preMix: Double = (prepaids/totalActs) //Percentage of prepaid activations
var spcMix: Double = (spc/totalActs) //Percentage os SPC activations
var mbbMix: Double = (mbb/totalActs) //Percentage of MBB activations

//TEP Variables
var tep: Double = //Total TEP attachments
var tepOpp: Double = //Total opportunity for TEP
var tepRate: Double = (tep/tepOpp) //Total attachment rate for TEP

//Accessory Variable
var accy: Double = //Total value of accessories sold

//APH Variables
var aph: Double = (accy/totalActs) //Accessories Per Handset average
var aphGoal: Double = (totalActs*75.00) //Goal for APH average of $75.00

//Position Based Total Incentive Variables
var fullComp: Double = //Position based Full Compensation total
var actTic: Double = //Position based Activation TIC
var accyTic: Double = //Position based Accessory TIC
var accyGoal: Double = //Position based Accessory 

//Multiplier Variable
var multiplier: Double = //Determined by switch statement

//SPS variable
var sps: Double = //SPS as found in metrics

//Tax and Payout Variables
var actPayout: Double = (actTic*percentToGoal*multiplier) //Payout for activation totals
var accyPayout: Double = (accy*0.06) //Payout for accessory total
var tax: Double = 0.34 //Tax rate on commissions
var grossPayout: Double = (actPayout+accyPayout) //Total payout before taxes
var taxPaid: Double = (grossPayout*tax) //Amount of taxes paid
var netPayout: Double = (grossPayout-taxPaid) //Net payout after taxes
var decelGrossPayout: Double = ((actPayout+accyPayout)*0.90) //Payout if SPS decelerated 10%
var decelTaxPaid: Double = (decelGrossPayout*tax) //Tax paid if SPS decelerated 10%
var decelNetPayout: Double = (decelGrossPayout-decelTaxPaid) //Total net payout after tax if SPS decelerated 10%
