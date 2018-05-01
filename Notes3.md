#### Looping Range in Swift
How to do
```
for (i = 0.5; i <= 15.25; i += 0.3)
```
is
```
for i in stride(from: 0.5, through: 15.25, by: 0.3)
// use "to" instead of "through" if you don't want to include it
```

#### Tuple
- Grouping of values
```
let x: (String, Int, Double) = ("hello", 5, 0.85)
let (word, number, value) = x
print(value)  // print 0.85
```
or
```
let x: (w: String, i: Int, v: Double) = ("hello", 5, 0.85)
print(x.w)  // print "hello"
```
- Tuples can be useful for return value.

#### Computed Properties
```
var foo: Double {
  get {
    // return the calculated value of foo
  }
  set(newValue) {
    // do something based on the fact that foo has changed to newValue
  }
}
```
- Don't have to implement `set`

#### Access Control
- internal
  - The default, it means usable by any object in my app or framework, pretty much unlimited.
-  private
  - Only callable from within this object
- private(set)
  - Readable outside, but not settable
- fileprivate
  - Accessible by any code in this source file
- For frameworks only
  - public: this can be used by objects outside my framework
  - open: public and objects outside my framework can subclass this

Assert to protect your API.

#### Extensions
- You can add methods/properties to a  class/struct/enum (even if you don't have the source)
- You can't reimplement methods or properties that are already there. The properties you add can have no storage associated with them (computed only).

#### Optionals
- It's an enumeration.
- Enum can only have discrete states, each state can have its own "associated data":
  ```
  enum FasFoodMenuItem {
    case hamburger(numberOfPatties: Int)
    case fries(size: FryOrderSize)
    case drink(String, ounces: Int)
    case cookie
  }

  enum FryOrderSize {
    case large
    case small
  }
  ```
- Assign an enum:
  ```
  let menuItem: FasFoodMenuItem = FasFoodMenuItem.hamburger(patties: 2)
  ```
- Checking an enum's state, with a `switch` statement
  ```
  var menuItem: FasFoodMenuItem = FasFoodMenuItem.hamburger(patties: 2)

  switch menuItem {
    case .hamburger(let pattyCount):
      print ("burger with \(pattyCount) patties!")
    case .fries:
      print("fries")
      print("yummy")
    default: print("other")
  }
  ```
- Methods (and computed properties) but no stored properties
- Modifying self in an enum, use `mutating` because enum is a VALUE TYPE.

- Basically optional is just an enum
- Special optional syntax in Swift:
  - "not set" has a special keyword: `nil`
  - `?` to declare an optional
  - `!` to unwrap the associated data if an optional is in the state
  - `??` optional defaulting

#### Data Structure
- `class`
  - reference type
  - single inheritance of both functionality and data
  - automatic reference counting (not garbage collection)
  - can influence a reference var:
    - strong: normal, stay in the heap
    - weak: if no one else is interested in this, then neither am I, set me to nil in that because, will never keep an object in the heap
    - unowned: don't reference count this; crash if I'm wrong. Rarely used. Only to break memory cycles.
- `struct`
  - copy on write
  - no inheritance
- `enum`
  - value type (passed around by copying)
- `protocol`
  - a declaration of functionality only.
  - a collection of method and property declarations.
  ```
  protocol SomeProtocol: InheritedProtocol1, InheritedProtocol2 {
    var someProperty: Int { get set }
    func aMethod(arg1: Double) -> SomeType
    mutating func changeIt()
    init(arg: Type)
  }
  ```
