//
//  Avatar.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 07/12/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

class Avatar: UIView {
    var photo: UIImageView!
    
    @IBInspectable var shadowRadius: CGFloat = 4.0
    
    @IBInspectable var shadowColor: CGColor = UIColor.black.cgColor
    
    @IBInspectable var shadowOpacity: Float = 1.0
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addImage()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        addImage()
    }
    
    func addImage() {
        photo = UIImageView(frame: frame)
        
        addSubview(photo)
    }
    
    // функция вызывается, когда любое свойство изменяется
    override func layoutSubviews() {
        photo.frame = bounds
        
        layer.backgroundColor = UIColor.clear.cgColor

        layer.shadowColor = shadowColor

        layer.shadowOpacity = shadowOpacity

        layer.shadowRadius = shadowRadius

        layer.shadowOffset = CGSize(width: 0, height: 1)

        photo.layer.cornerRadius = bounds.height / 2

        photo.layer.masksToBounds = true


    }
    
    
    /*
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.fillEllipse(in: CGRect(x: rect.midX - 50, y: rect.midY - 50, width: 100, height: 100))
        
    }
    */
}
