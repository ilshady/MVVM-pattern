//
//  RegisterPageView.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 02.11.2021.
//

import UIKit

class RegisterPageView: LoginPageView {
    
    let confirmPassword: InputTextField = {
        let text = InputTextField()
        text.placeholder = "Confirm Password"
        text.setRightImage(image: #imageLiteral(resourceName: "confirm"))
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutSetup()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutSetup() {
        //removing unused views
        //stackView.removeArrangedSubview(forgetButton)
        forgetButton.isHidden = true
        
        //changing title name
        titleView.pageNameLabel.text = "Sign up"
        
        //changing button names
        loginButton.setTitle("Sign up", for: .normal)
        
        registerButton.setTitle("Already have and account?", for: .normal)
        registerButton.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
        
        //adding password confirm
        stackView.insertArrangedSubview(confirmPassword, at: 3)
        
        NSLayoutConstraint.activate([
            confirmPassword.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            confirmPassword.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            confirmPassword.heightAnchor.constraint(equalToConstant: 56),
        
        ])
        
    }

}
