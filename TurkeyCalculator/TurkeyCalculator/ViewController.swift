//
//  ViewController.swift
//  TurkeyCalculator
//
//  Created by Paul Solt on 6/3/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet var turkeyWeightTextField: UITextField!
    @IBOutlet var cookTimeTextField: UITextField!
    @IBOutlet var metricButton: UIButton!
    
    // Actions
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        print("Calculate button pressed")
    }
    
    @IBAction func metricButtonPressed(_ sender: Any) {
        
    }
    
    // Helper functions
    
    func cookTimeInPounds(weight: Double) -> Double {
        let durationInMinutes = weight * 15.0
        return durationInMinutes
    }
    
    func cookTimeInKilograms(weight: Double) -> Double {
        var durationInMinutes: Double
        
        if weight >= 4 {
            durationInMinutes = 20.0 * weight + 90
        } else {
            durationInMinutes = 20.0 * weight + 70
        }
        
        return durationInMinutes
    }
}
