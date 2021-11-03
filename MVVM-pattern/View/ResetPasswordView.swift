//
//  ResetPasswordView.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 02.11.2021.
//

import UIKit

class ResetPasswordView: LoginPageView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutSetup() {
        
        titleView.pageNameLabel.text = "Recover Password"
        
        registerButton.setTitle("Cancel", for: .normal)
        
        stackView.removeArrangedSubview(passwordTextField)
        passwordTextField.isHidden = true
        stackView.removeArrangedSubview(forgetButton)
        forgetButton.isHidden = true
        
        loginButton.setTitle("Reset Password", for: .normal)

    }
}
