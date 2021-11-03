//
//  LinkButton.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 02.11.2021.
//

import UIKit

class LinkButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitle("Don't have an account? Sign up.", for: .normal)
        self.setTitleColor(#colorLiteral(red: 1, green: 0.4760226607, blue: 0.7003823519, alpha: 1), for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
