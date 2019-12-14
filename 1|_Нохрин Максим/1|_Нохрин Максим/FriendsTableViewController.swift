//
//  TableViewController.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 30/11/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    var friendList = ["One", "Two", "Three", "Four", "Five"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTemplate", for: indexPath) as? FriendCell else { return UITableViewCell() }
            cell.name.text = friendList[indexPath.row]
            return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let name = friendList[indexPath.row]
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyBoard.instantiateViewController(identifier: "PhotoController") as? PhotoController {
            viewController.userName = name
            
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
        
        //print(friendList[indexPath.row])
    }
    

}
