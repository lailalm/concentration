## Multiple MVCs
- UITabBarController
  - Basically the tab, the simplest.
  - Bottom icon tab `UITabBarItem`
  - Generally no more than 5
- UISplitViewController
  - Two MVCs side-by-side
  - Master and Detail
- UINavigationController
  - Pushes and pops MVCs off of a stack (like a stack of cards)
  - Automatically `back` button

#### Accessing the sub-MVCs
```
var viewControllers: [UIViewController]? { get set }
```

#### Wiring up MVCs
- Control drag as usual.
- UISplitViewController to also works on iPhone.
  `Editor > Embed In > Navigation Controller`

#### Segues
- Show Segue (push in a Navigation Controller, else modal)
- Show Detail Seguw (will show in Detail of Split View or will push in a Navigation Controller)
- Modal Segue (entire screen)
- Popover Segue (little popover)

- Segues always create a `new instance` of an MVC
- Ctrl + drag to make segues
- Can also perform from code
- Preparing for a Segue
```
func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  if let identifier = segue.identifier {
    switch identifier {
      case "Show Graph":
        if let vc = segue.destination as? GraphController {
          vc.property1 = ..             // outlet still nil
          vc.callMethodToSetItUp(..)    // outlet still nil
        }
      default: break
    }
  }
}
```
## Timer

## Animation
