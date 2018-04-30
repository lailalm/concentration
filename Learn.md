# Self Learning Notes
Kinda messy, but here it is.

## Struct and Class
#### Struct
- No inheritance
- Value types --> it gets copied.
- String, Int, Array, Dictionary are struct.
- Get free initializer, initialize all of their vars even it has been initialized.

#### Class
- Reference types.
- Passing around, passing the pointer only.
- Has free init as long as the variable is initialized.

#### Lazy
- Cannot have didSet.

## Shortcut and Debugger
#### Shortcut
- cmd + R run
- Navigating:
  ```
  cmd + 0             left pane
  cmd + alt + 0       right pane
  cmd + shift + y     console
  cmd + alt + enter   second pane
  cmd + enter         back into one pane
  etc
  ```
- Open
  ```
  cmd + o             open file
  ```
- Beautify (indentation)
  ```
  ctrl + i
  ```
#### Debugger
- Breakpoints
  - Can also add breakpoints of exception
  - In lldb can also print for example `po game or p game`
  
