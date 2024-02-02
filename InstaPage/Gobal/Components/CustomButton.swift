//
//  CustomButton.swift
//  InstaPage
//
//  Created by t2023-m0051 on 2/1/24.
//

import UIKit

class CustomButton: UIButton {
    
    
    init(text: String, backgroundColor: UIColor) {
        
        
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(text, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 10
        self.setTitleColor(.white, for: .normal)
        
        
        // iOS 15.0 미만 버전에서만 contentEdgeInsets를 설정합니다.
        if #available(iOS 15.0, *) {
            var configuration = UIButton.Configuration.tinted()
            configuration.title = text
            configuration.baseBackgroundColor = backgroundColor
            configuration.imagePadding = 16
            configuration.titlePadding = 8
            
            self.configuration = configuration
            // iOS 15.0 이상에서는 contentEdgeInsets를 설정하지 않음
        } else {
            self.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        }
       
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.7)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
