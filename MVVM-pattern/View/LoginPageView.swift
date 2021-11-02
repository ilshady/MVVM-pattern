//
//  LoginPageView.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 01.11.2021.
//

import UIKit

class LoginPageView: UIView {
    
//MARK: Views
    internal var titleView: TitleAndIconView  {
        let title = TitleAndIconView()
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }
    
    private let emailTextField: InputTextField = {
        let text = InputTextField()
        
        return text
    }()
    
    private let passwordTextField: InputTextField = {
        let text = InputTextField()
        text.placeholder = "Password"
        return text
    }()
    
    private let loginButton: MainButton = {
        let button = MainButton()
        
        return button
    }()
    
    private let registerButton: LinkButton = {
        let button = LinkButton()
        return button
    }()
    
    private let forgetButton: LinkButton = {
        let button = LinkButton()
        button.setTitle("Forgot your password?", for: .normal)
        return button
    }()
    
    let stackView = UIStackView()
    
//MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .darkGray
        layoutSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: Layout
    private func layoutSetup() {
        
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
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
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            passwordTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 40),

        ])
    }
}

//MARK: Extension

extension UITextField {
    func setPadding(_ amount: CGFloat) {
        let padding = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = padding
        self.leftViewMode = .always
    }
}
