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
