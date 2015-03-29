# polybutton
Swift class for creating polygonal buttons.

Create triangle, square, pentagon, and any other shape you like!

![Sample_Buttons](https://github.com/benjaminhass/polybutton/blob/master/Screenshots/Sample_Poly_Buttons.png)

##Installation
Copy PolyButtons.swift into your project.

##Usage

### Create the vertices of the button.

```swift
var p1 = CGPoint(x: 200, y: 50.0)
var p2 = CGPoint(x: 300, y: 150.0)
var p3 = CGPoint(x: 100, y: 150.0)
```
### Initialize with points, color, and bounds.

```swift
var triangle = PolyButton(points: [p1,p2,p3], color: UIColor.greenColor(), frame: self.view.bounds)
```

### Add an action, if desired.

```swift
func didPressTriangle(sender: AnyObject?) {
 println("Triangle")
}

triangle.addTarget(self, action: "didPressTriangle:", forControlEvents: UIControlEvents.TouchUpInside)
```

### Add the button as a subview to the parent view.

```swift
self.view.addSubview(triangle)
```
