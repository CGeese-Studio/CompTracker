# compTracker
## Compensation tracker for commissions
---
### Provides an easy way to track progress, set daily goals and monitor performance.
  1. Relies on user input for all calculations.
  2. Accurate reporting is very important.
  3. Switch statement locks multiplier at 1.0 for quotas less than 10.0
  4. Now returns difference between current attainment and goal values.
  5. Prints percent to goal based on both Activation and Accessory attainment.
  6. Now accurately rounds results to 2 decimal places.
  7. Merged declarations and compTracker into compensation.swift for a wider range of trackable variables.

---
### compensation.swift houses the entire project codebase.  
Copying this files contents into a swift compiler will print the values of all compensation related variables.  
Modifying the starting values of position, quota, acts (each category) and accy will output comp statements for the values entered.  
  1. Position sets the apropriate incentive compensation values for compiling.  
  2. Quota tells the program what your sales goal is for activations, used for multiplier and activation payouts. 
  3. Acts tells the program how many activations you currently have to date. Broken down into all categories and weighted apropriately for TIC calculations. 
  4. Accy tells the program what you have sold in accessories to date.   
  5. Every variable that can be edited for testing is documented with line comments. 
	
---