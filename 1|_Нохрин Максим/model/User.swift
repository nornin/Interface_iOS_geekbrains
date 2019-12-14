//
//  User.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 05/12/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

enum GenderChoice {
     case man
     case woman
}

class User {
    var name: String
    
    var gender: GenderChoice?
    
    var age: Int?
    
    var avatar: String
    
    init(name: String, gender: GenderChoice?, age: Int?, avatar: String) {
        self.name = name
        
        self.gender = gender
        
        self.age = age
        
        self.avatar = avatar
    }
}
