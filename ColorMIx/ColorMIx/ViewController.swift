//
//  ViewController.swift
//  ColorMIx
//
//  Created by Luis Roberto Blancas Lemini on 21/01/20.
//  Copyright © 2020 Luis Roberto Blancas Lemini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpColorView()
        update()
    }

    func setUpColorView(){
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
    }

    func update(){
        
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue: CGFloat = 0
        
        
        if redSwitch.isOn == true{
            redSlider.isEnabled = true
            red = CGFloat(redSlider.value)
        }else {
            redSlider.isEnabled = false
        }
        
        if greenSwitch.isOn == true{
            greenSlider.isEnabled = true
            green = CGFloat(greenSlider.value)
        } else{
            greenSlider.isEnabled = false
        }
        
        if blueSwitch.isOn{
            blueSlider.isEnabled = true
            blue = CGFloat(blueSlider.value)
        } else{
            blueSlider.isEnabled = false
        }

        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        update()
    }
    @IBAction func switchAction(_ sender: Any) {
        update()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        update()
    }
    
}

