//
//  ViewController.swift
//  Gradient Layer
//
//  Created by Usama Sadiq on 3/14/20.
//  Copyright © 2020 Usama Sadiq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        one.applyGradientLayer()
        
    }
    
    @IBAction func oneTapped(_ sender: UIButton) {
        sender.applyGradientLayer()
        two.removeGradientLayer()
        three.removeGradientLayer()
    }
    @IBAction func twoTapped(_ sender: UIButton) {
        sender.applyGradientLayer()
        one.removeGradientLayer()
        three.removeGradientLayer()
    }
    @IBAction func threeTapped(_ sender: UIButton) {
        sender.applyGradientLayer()
        one.removeGradientLayer()
        two.removeGradientLayer()
        
        
    }
    @IBAction func removeGradientTapped(_ sender: Any) {
        
    
    }
    
    
}


extension UIView {
    
    
    
    func applyGradientLayer () {
        let topColor = UIColor.green
        let bottomColor = UIColor.yellow
        // Manage gradient colors in an array
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        // Create a gradient layer
        let gradientLayer: CAGradientLayer = CAGradientLayer ()
        // assign gradient color to layer
        gradientLayer.colors = gradientColors
        // Set the gradient layer to the size of the target button
        gradientLayer.frame = self.bounds
        gradientLayer.name = "grad"
        
        var present: Bool = false
        
        if let layers = self.layer.sublayers {
                  if layers.count > 1 {
                      for layer in layers {
                          if layer.name == "grad" {
                              present = true
                          }
                      }
                      
                  }
              }
        if !present {
            // Gradient layer is added to the index (0).
                  self.layer.insertSublayer (gradientLayer, at: 0)
        }
        
        print(gradientLayer.name!)
        print("One's Layer \(String(describing: self.layer.sublayers?.count))")
    }
    
    
    func removeGradientLayer () {
        if let layers = self.layer.sublayers {
            if layers.count > 1 {
                for layer in layers {
                    if layer.name == "grad" {
                        layer.removeFromSuperlayer()
                    }
                }
                
                print("One's Layer \(layers.count)")
            }
        }
    }
}


