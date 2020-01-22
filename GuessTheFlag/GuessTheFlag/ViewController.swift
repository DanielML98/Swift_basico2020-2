//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Daniel Alejandro on 22/01/20.
//  Copyright © 2020 DAML. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    //var countries: [String] = [] Declaración alternativa de un arreglo de strings que inicia vacío
    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany","ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        button1.layer.borderWidth = 5
        button2.layer.borderWidth = 5
        button3.layer.borderWidth = 5
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }
    
    func askQuestion(){
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        
    }
    
}

