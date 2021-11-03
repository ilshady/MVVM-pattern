//
//  RecoverController.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 03.11.2021.
//

import UIKit

class RecoverController: UIViewController {
    
    let loginView = RegisterPageView()
    
    override func loadView() {
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
