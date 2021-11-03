//
//  MainButton.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 02.11.2021.
//

import UIKit

class MainButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 28
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.backgroundColor = .systemPink
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle("Login", for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
