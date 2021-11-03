//
//  TitleAndIconViews.swift
//  MVVM-pattern
//
//  Created by Ilshat Khairakhun on 02.11.2021.
//

import UIKit

class TitleAndIconView: UIView {
    
    private let iconImageView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "E")
        image.tintColor = #colorLiteral(red: 0.9862437844, green: 0.4731853008, blue: 0.6882672906, alpha: 1)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let pageNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Login"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = .boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutSetup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutSetup() {
        
        addSubview(iconImageView)
        addSubview(pageNameLabel)
        
        NSLayoutConstraint.activate([
            iconImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            iconImageView.heightAnchor.constraint(equalToConstant: 90),
            iconImageView.widthAnchor.constraint(equalToConstant: 90),
            iconImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),

            pageNameLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 20),
            pageNameLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            pageNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            pageNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
 
        ])
    }
}
