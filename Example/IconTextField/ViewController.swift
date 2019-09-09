//
//  ViewController.swift
//  IconTextField
//
//  Created by josharnoldjosh on 09/08/2019.
//  Copyright (c) 2019 josharnoldjosh. All rights reserved.
//

import UIKit
import IconTextField2
import SnapKit

class Test:IconTextField {
    override init() {
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Example
        let emailTextField = IconTextField()
        emailTextField.setIcon(image: UIImage.init(named: "Email"), width: 20, padding: 10) // padding & width controlled to give offset of 35
        emailTextField.underline()
        emailTextField.placeholder = "Email"
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).inset(30)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).inset(30)
            make.height.equalTo(50)
        }
        
        // Specific example:
        
        // Create the icon text field
        let passwordTextField = IconTextField()
        
        // Set the icon
        passwordTextField.setIcon(image: UIImage.init(named: "Lock"))
        
        // Add a nice underline
        passwordTextField.underline()
        
        // Additional properties
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        
        // add subview
        view.addSubview(passwordTextField)
        
        // Snap it
        passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).inset(30)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).inset(30)
            make.height.equalTo(50)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

