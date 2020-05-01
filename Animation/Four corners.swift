//
//  Four corners.swift
//  Animation
//
//  Created by Jesse Zhang on 2020-04-30.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position
    var x : Int
    var x1: Int
    
    
    //function
    override init() {
        
        // size for canvas
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        x1 = 250
    }
    
    // repeat the function
    func draw() {
        
        //change position
        x += 1
        x1 -= 1
        
        // Change to red
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 75, alpha: 1000)
        //top right
        canvas.drawRectangle(at: Point(x: x, y: x), width: 50, height: 50)
        
        // Change to yellow
        canvas.fillColor = Color(hue: 100, saturation: 100, brightness: 75, alpha: 1000)
        //botom left
        canvas.drawRectangle(at: Point(x: x1-40, y: x1-40), width: 50, height: 50)
        
        // Change to blue
        canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 75, alpha: 1000)
        //bottom right
        canvas.drawRectangle(at: Point(x: x, y: x1-40), width: 50, height: 50)
        
        // Change to green
        canvas.fillColor = Color(hue: 120, saturation: 100, brightness: 75, alpha: 1000)
        //top left
        canvas.drawRectangle(at: Point(x: x1-40, y: x), width: 50, height: 50)
    }
    
}
