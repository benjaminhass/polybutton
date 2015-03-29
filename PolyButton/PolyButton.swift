//
//  PolyButton.swift
//  Triangles
//

import UIKit
/*
A polygonal UIButton that responds to touch events correctly within its bounds.
Credit to http://www.planet1107.net/blog/custom-shape-uibutton-tutorial/ for the idea.
*/
class PolyButton: UIButton {
    
    /// The path outlining the button.
    var bezierPath: UIBezierPath = UIBezierPath()
    
    /// Button action
    var action: ((AnyObject?) -> ())? = nil
    
    init(points: [CGPoint], color: UIColor, frame: CGRect) {
        super.init()
        
        if points.count < 3 {
            println("Cannot create a polygonal button with less than three points.")
            return
        }
        self.frame = frame
        self.backgroundColor = color
        
        // Draw the path moving from point to point
        bezierPath.moveToPoint(points[0])
        for var index = 1; index < points.count; ++index {
            bezierPath.addLineToPoint(points[index])
        }
        bezierPath.closePath()
        
        // Apply the mask over the button
        var mask = CAShapeLayer()
        mask.frame = self.bounds
        mask.path = bezierPath.CGPath
        self.layer.mask = mask
        self.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func buttonAction(sender: UIButton) {
        action?(sender)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        if bezierPath.containsPoint(point) {
            return self
        }
        return nil
    }
}
