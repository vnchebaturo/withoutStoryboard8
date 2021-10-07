//
//  UIButton.swift
//  withoutStoryboard8
//
//  Created by VladimirCH on 07.10.2021.
//

import Foundation
import UIKit


extension UIButton {
    
    convenience init(title: String,
                     backgroundColor: UIColor,
                     titleColor: UIColor,
                     isShow: Bool = true,  //тени
                     cornerRadius: CGFloat = 5) {
        
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = UIColor.blue.cgColor
        
        if isShadow {
            
            self.layer.shadowRadius = 5
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            
        }
    }
}
