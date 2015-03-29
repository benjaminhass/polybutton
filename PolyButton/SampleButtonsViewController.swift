//
//  ViewController.swift
//  PolyButton
//
//  Created by Benjamin Hass on 3/27/15.
//  Copyright (c) 2015 Benjamin Hass. All rights reserved.
//

import UIKit

class SampleButtonsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var p1 = CGPoint(x: 200, y: 50.0)
        var p2 = CGPoint(x: 300, y: 150.0)
        var p3 = CGPoint(x: 100, y: 150.0)
        
        var triangle = PolyButton(points: [p1,p2,p3,], color: UIColor.greenColor(), frame: self.view.bounds)
        triangle.action = didPressTriangle
        
        var p4 = CGPoint(x: 150.0, y: 200.0)
        var p5 = CGPoint(x: 250.0, y: 200.0)
        var p6 = CGPoint(x: 250.0, y: 300.0)
        var p7 = CGPoint(x: 150.0, y: 300.0)
        
        var square = PolyButton(points: [p4,p5,p6,p7], color: UIColor.redColor(), frame: self.view.bounds)
        square.action = didPressSquare
        
        var p8 = CGPoint(x: 200.0, y: 350.0)
        var p9 = CGPoint(x: 105.0, y: 419.0)
        var p10 = CGPoint(x: 141.0, y: 531.0)
        var p11 = CGPoint(x: 259.0, y: 531.0)
        var p12 = CGPoint(x: 295.0, y: 419.0)
        
        var pentagon = PolyButton(points: [p8,p9,p10,p11,p12], color: UIColor.blueColor(), frame: self.view.bounds)
        pentagon.action = didPressPentagon
        
        self.view.addSubview(triangle)
        self.view.addSubview(square)
        self.view.addSubview(pentagon)
    }
    
    func didPressTriangle(sender: AnyObject?) {
        println("Triangle")
    }
    
    func didPressSquare(sender: AnyObject?) {
        println("Square")
    }
    
    func didPressPentagon(sender: AnyObject?) {
        println("Pentagon")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

