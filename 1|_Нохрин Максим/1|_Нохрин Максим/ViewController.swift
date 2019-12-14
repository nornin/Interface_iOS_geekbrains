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
        
        guard let login = inputLogin.text, !login.isEmpty,
            let password = inputPassword.text, !password.isEmpty else {
                let alert = UIAlertController(title: "Ошибка", message: "Пустой логин или пароль", preferredStyle: .alert)
                
                let action = UIAlertAction(title: "Назад", style: .cancel, handler: nil)
                
                alert.addAction(action)
                
                present(alert, animated: true, completion: nil)
                
                print("Пустой логин или пароль")
                
                return
        }
        
        performSegue(withIdentifier: "tabBar", sender: sender)
        
        print("Успешный вход")

    }
    
}

