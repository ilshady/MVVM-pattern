//
//  InputTextField.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 02.11.2021.
//

import UIKit

class InputTextField: UITextField {
    
    let placeholderColor = #colorLiteral(red: 0.3511085212, green: 0.3611368835, blue: 0.3737778068, alpha: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 28
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.backgroundColor = #colorLiteral(red: 0.1637891829, green: 0.1688050926, blue: 0.1815480292, alpha: 1)
        self.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : placeholderColor])
        self.font = .boldSystemFont(ofSize: 17)
        self.setPadding(18)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

//MARK: Extension

extension UITextField {
    func setPadding(_ amount: CGFloat) {
        let padding = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = padding
        self.leftViewMode = .always
    }
    
    func setRightImage(image: UIImage) {
        let iconContainer = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let mailView = UIImageView(frame: CGRect(x: -15, y: 0, width: 30, height: 30))
        mailView.image = image
        mailView.tintColor = #colorLiteral(red: 0.3511085212, green: 0.3611368835, blue: 0.3737778068, alpha: 1)
        mailView.contentMode = .scaleAspectFit
        iconContainer.addSubview(mailView)
        self.rightViewMode = .always
        self.rightView = iconContainer
       }
}


