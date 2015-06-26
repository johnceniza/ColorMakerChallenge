//
//  ViewController.swift
//  ColorMakerChallenge
//
//  Created by John Ceniza on 6/26/15.
//  Copyright (c) 2015 AppDeco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var squareColorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //initalize squareColorView as black
        self.redSlider.value = 0
        self.greenSlider.value = 0
        self.blueSlider.value = 0
        
        updateSquareColorView()
    }

    @IBAction func sliderChanged(sender: UISlider) {
        
        //if else statement to determine which slider value is being changed
        if sender == redSlider {
            redSlider.value = sender.value
        } else if sender == greenSlider {
            greenSlider.value = sender.value
        } else if sender == blueSlider {
            blueSlider.value = sender.value
        } else {
            //This shouldn't happen. Like. Ever.
        }
        
        updateSquareColorView()
    }
    
    //function to change color of view using slider values
    func updateSquareColorView() {
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        squareColorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
}

