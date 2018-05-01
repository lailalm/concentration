## Thrown Error
```
do {
  try context.save()
} catch let error {
  throw error
}
```

## Any and AnyObject
- Special types.
- Generally avoid Any.

#### casting
- `as?` can also be used to cast a protocol.

## NSObject
- Root class for all Obj-C classes.

## NSNumber
- Generic number
```
let n = NSNumber(35.5)
let intified: Int = n.intValue    // doubleValue, boolValue, etc
```

## Date
- See also Calendar, DateFormatter, DateComponents

## Data
- Bag of bits.

## Views
- (i.e. UIView class) represents a rectangular area.
- A view has only one superview, but may (or zero) subviews.
```
func addSubview(_ view: UIView)
func removeFromSuperView()
```

#### UIView
- Initializing
```
init(frame: CGRect)       // if the UIView created in code
init(coderL NSCoder)      // if the UIVIew comes out of a storyboard

awakeFromNib()            // only called if the UIView came out of a storyboard, called initially after initialization
```

#### Coordinate System Data Structures
- Origin is upper left. Increasing go down and right.
- Units are points.
- CGFloat
  ```
  let cgf = CGFloat(aDouble)
  ```
- CGPoint
- CGSize
- CGRect
  ```
  let rect = CGRect(originL aCGPoint, size: aCGSize)
  ```

#### Drawing Images
```
let image: UIImage =
image.draw(at poin: aCGPoint)
```
