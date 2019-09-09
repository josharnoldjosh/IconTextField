//
//  ViewController.swift
//  IconTextField
//
//  Created by josharnoldjosh on 09/08/2019.
//  Copyright (c) 2019 josharnoldjosh. All rights reserved.
//

import UIKit
import IconTextField

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Create the icon text field
        let passwordTextField = IconTextField(frame: CGRect(x: 30, y: 70, width: view.frame.width-60, height: 50))
        
        // Set the icon
        passwordTextField.setIcon(image: UIImage.init(named: "Lock"))
        
        // Add a nice underline
        passwordTextField.underline()
        
        // Additional properties
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        
        // add subview
        view.addSubview(passwordTextField)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

