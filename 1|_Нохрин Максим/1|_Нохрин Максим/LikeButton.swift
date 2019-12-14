//
//  LikeButton.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 14/12/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

class LikeButton: UIButton {
    @IBInspectable var liked: Bool = false {
        didSet {
            setupDefault()
        }
    }
    
    @IBInspectable var likeCount = 0 {
        didSet {
            setupDefault()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDefault()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupDefault()
    }
    
    func like() {
        liked = !liked
        
        if liked {
            setLike()
        } else {
            disableLike()
        }
    }
    
    private func setupDefault () {
        setImage(UIImage(named: "dislike"), for: .normal)
                
        setTitle(String(describing: likeCount), for: .normal)
                
        tintColor = .gray
        
        imageEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        
        titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -5)
        
        imageView?.contentMode = .scaleAspectFit
    }
    
    private func setLike() {
        likeCount += 1
        
        setImage(UIImage(named: "like"), for: .normal)
        
        setTitle(String(describing: likeCount), for: .normal)
        
        tintColor = .red
    }
    
    private func disableLike() {
        likeCount -= 1
        
        setImage(UIImage(named: "dislike"), for: .normal)
        
        setTitle(String(describing: likeCount), for: .normal)
        
        tintColor = .gray
    }
}
