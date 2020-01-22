//
//  ViewController.swift
//  Login_2
//
//  Created by Daniel Alejandro on 22/01/20.
//  Copyright © 2020 DAML. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgotUserName: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgotten", sender: forgotUserName)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgotten", sender: forgotPassword)
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let sender = sender as? UIButton
        
        if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        if sender == loginButton {
            segue.destination.navigationItem.title = textField.text
        }
    }

}

