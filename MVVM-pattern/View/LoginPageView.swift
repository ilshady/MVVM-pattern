//
//  LoginPageView.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 01.11.2021.
//

import UIKit

class LoginPageView: UIView {
    
//MARK: Views
    let titleView: TitleAndIconView = {
        let title = TitleAndIconView()
        
        return title
    }()
    
    let emailTextField: InputTextField = {
        let text = InputTextField()
        text.setRightImage(image: #imageLiteral(resourceName: "email"))
        return text
    }()
    
    let passwordTextField: InputTextField = {
        let text = InputTextField()
        text.placeholder = "Password"
        text.setRightImage(image: #imageLiteral(resourceName: "password"))
        return text
    }()
    
    let loginButton: MainButton = {
        let button = MainButton()
        return button
    }()
    
    let registerButton: LinkButton = {
        let button = LinkButton()
        return button
    }()
    
    let forgetButton: LinkButton = {
        let button = LinkButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.6907229424, green: 0.5062624216, blue: 0.9193312526, alpha: 1), for: .normal)
        return button
    }()
    
    let stackView = UIStackView()
    
//MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.1049660668, green: 0.1099768803, blue: 0.1184420511, alpha: 1)
        layoutSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: Layout
    private func layoutSetup() {
        
        stackView.axis  = .vertical
        stackView.distribution  = .equalSpacing
        stackView.alignment = .center
        stackView.spacing   = 10.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(titleView)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        stackView.addArrangedSubview(registerButton)
        stackView.addArrangedSubview(forgetButton)
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 56),
            
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            passwordTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 56),
            
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 56),

        ])
    }
}


