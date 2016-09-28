// running list of known constants and variables
// The main compTracker file will eventually be updated to use these variables
var newActs: Double = 0.0 // New Activations
var upgrade: Double = 0.0 // Upgrade Activations
var tablet: Double = 0.0 // Tablet Activations
var prepaid: Double = 0.0 // Prepaid Activations
var spc: Double = 0.0 // Sprint Phone Connect Activations
var mbb: Double = 0.0 // Mobile BroadBand Activations
var accy: Double = 0.0 // Accessory Sales ($ Currency)
var totalActs: Double = (upgrade + tablet + prepaid + spc + mbb) // Total of all activations combined
var totalActComp: Double = (newActs) + (totalActs * 0.75) // Total activation Comp value
let newMix: Double = (newActs / totalActs) // % of new activations
let tabMix: Double = (tablet / totalActs) // % of tablet activations
let aph: Double = (accy / totalActs) // APH for number of handsets sold
var multiplier: Double = 0.0 // Switch case will determine multiplier
var fullComp: Double = 0.0 // Holds your positions full Comp value ($ Currency)
var actTic: Double = 0.0 // Holds your positions Activation target ($ currency)
var accTic: Double = 0.0 // Holds your positions Accessory target ($ currency)
var accGoal: Double = 0.0 // Holds your positions accessory goal
let tax: Double = 0.34 // Tax on Comp is 34%
var quota: Double = 0.0 // User entered quota for the month
var position: String = "" // User entered position, determines comp values
var percentTG: Double = (totalActComp / quota) // Determines percent to goal (%)
let actPayout: Double = (actTic * percentTG * multiplier) // Determines activation payout
let accPayout: Double = (accy * 0.06) // Accessories pay out 6% of sales
var sps: Double = 0.0 // User defined Sprint Promoter Score
let grossPayout: Double = (accPayout + actPayout) // Total comp payout before taxes ($ currency)
let taxPaid: Double = (totalPayout * tax) // Total amount of taxes paid ($ currency)
let netPayout: Double = (grossPayout - taxPaid) // Comp amount after taxes ($ currency)
let decelPayout: Double = (grossPayout * 0.90) // Applies 10% decelerator for poor SPS performance
let decelTaxPaid: Double = (delecPayout * tax) // figures out tax paid for a decelerated comp
let netDecelPayout: Double = (decelPayout - decelTaxPaid) // Figures net Comp for decelerated payout
// test new line addition
