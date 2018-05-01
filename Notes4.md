## String
- Index of String
```
let st = "cafe pesto"
let firstCharIndex - st.startIndex
let fourthCharIndex = st.index(firstCharIndex, offsetBy: 3)
print(st[fourthCharIndex]) // e
```

- collection
```
for c in s { }                  // iterate through all Characters in s
let characterArray = Array(s)   // Array<Character>
```

## NSAttributedString
- an object that pairs a String and a Dictionary of attributes for each Character
```
let attributes: [NSAttributedStringKey: Any] = [
  .strokeColor: UIColor.orange,
  .strokeWidth: 5.0               // negative number would mean fill (positive means outline)
]
let attribtext = NSAttributedString(string: "Flips: 0", attributes: attributes)
flipCountLabel.attributedText = attribtext
```
- `NS` old style Objective-C class. You can't create a mutable NSAttributedString by just using var.

## Function Types
```
operation = sqrt
let result = operation(4.0)     // 2.0
```
- Closures, like an inline function
```
var operation: (Double) -> Double
operation = { -$0 }
let result = operation(4.0)               // result will be -4.0
```
  - property initialization
  - they capture surroundings variables
  - reference types
