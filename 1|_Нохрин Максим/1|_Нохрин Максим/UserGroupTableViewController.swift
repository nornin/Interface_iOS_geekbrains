//
//  UserGroupTableViewController.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 05/12/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

class UserGroupTableViewController: UITableViewController {
    var userGroup = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userGroup.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserGroupCell", for: indexPath) as? UserGroupCell else { return UITableViewCell() }
        
        cell.groupName.text = userGroup[indexPath.row]
        
        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            guard let allGroupsController = segue.source as? GlobalGroupTableViewController else {
                    return
            }
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                let group = allGroupsController.globalGroup[indexPath.row]
                
                if !userGroup.contains(group) {
                    userGroup.append(group)
                    
                    tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            userGroup.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

