//
//  ViewController.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 24/11/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        view.addGestureRecognizer(hideAction)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var inputLogin: UITextField!
    
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBAction func touchButton(_ sender: Any) {
        
        guard let _ = inputLogin.text,
            let _ = inputPassword.text else {
                return
        }
        
            print("Успешный вход")

    }
}

