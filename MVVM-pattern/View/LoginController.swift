//
//  ViewController.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 01.11.2021.
//

import UIKit

class LoginController: UIViewController {
    
    let loginView = ResetPasswordView()
    
    override func loadView() {
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

