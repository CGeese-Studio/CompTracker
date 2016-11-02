/* a list of potential changes and ideas to consider.
Considerations
1. Replace individual activation variables with an unordered dictionary.
  a. Arrange as type (string : double).
  b. Data is stored and accessed with a key.
    (string : double).
    (new : 2, up : 3, tab : 1, pre : 1, spc : 3, mbb : 1)
*/

//Dictionary Example
var activations: [string:double] //declares the dictionary and sets type
activations = [string:double]() // initializes the dictionary
activations = ["new":1, "up":2] // adds values to the dictionary
activations["tab"] = 3 // creates a key "tab" and assigns it the value 3
activations.removeValueForKey("tab") // removes the values for "tab"
activations["new"] = 3 // replaces the value for "new" with 3
activations.updateValue(3, forKey:"new") // same result as above

var activations = [
    "new":3.0,
    "up":4.0,
    "tab":2.0,
    "spc":2.0,
    "mbb":1.0,
    "pre":7.0
]


