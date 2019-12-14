//
//  GlobalGroupTableViewController.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 05/12/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

class GlobalGroupTableViewController: UITableViewController {
    var globalGroup = ["Семья", "Музыка", "Компьютеры", "Смартфоны", "Велосипеды", "Книги", "Чукотка", "Кино", "Котики"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return globalGroup.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GlobalGroupCell", for: indexPath) as? GlobalGroupCell else { return UITableViewCell() }
        
        cell.groupName.text = globalGroup[indexPath.row]

        return cell
    }

}
