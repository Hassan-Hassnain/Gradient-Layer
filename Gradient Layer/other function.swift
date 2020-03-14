//
//  other function.swift
//  Gradient Layer
//
//  Created by Usama Sadiq on 3/14/20.
//  Copyright © 2020 Usama Sadiq. All rights reserved.
//

import UIKit

class other_function: UIView {

    func add (Button: UIButton) {
        let topColor = UIColor.green
        let bottomColor = UIColor.yellow
        // Manage gradient colors in an array
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        // Create a gradient layer
        let gradientLayer: CAGradientLayer = CAGradientLayer ()
        // assign gradient color to layer
        gradientLayer.colors = gradientColors
        // Set the gradient layer to the size of the target button
        gradientLayer.frame = Button.bounds
        // Gradient layer is added to the index (0).
        Button.layer.insertSublayer (gradientLayer, at: 0)
        gradientLayer.name = "grad"
        
        print(gradientLayer.name!)
    }
    
    // Function to change the gradient of the button background
    func changeSelectedButtonBackground (Button: UIButton) {
        // Set the gradient color of the selected button
        let topColor = UIColor.green
        let bottomColor = UIColor.yellow
        // Manage gradient colors in an array
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        // Create a gradient layer
        let gradientLayer: CAGradientLayer = CAGradientLayer ()
        // assign gradient color to layer
        gradientLayer.colors = gradientColors
        // Set the gradient layer to the size of the target button
        gradientLayer.frame = Button.bounds
        // Gradient layer is added to the index (0).
        Button.layer.insertSublayer (gradientLayer, at: 0)
    }
    //    ↓ I want to cancel the gradation of a specific button with this function.
    // Function to remove button background gradation
    func removeGradientFromButtonBackground (Button: UIButton) {
        Button.layer.sublayers = nil}
    
    
    // Function to remove button background gradation
    func changeDefaultButtonBackground (Button: UIButton) {
        //        Button.layer.sublayers?.remove(at: 0)
        if let layer = Button.layer.sublayers? .first {
            print ("Button.layer.sublayers:", Button.layer.sublayers?.count)
            layer.removeFromSuperlayer ()
        }
    }

}
