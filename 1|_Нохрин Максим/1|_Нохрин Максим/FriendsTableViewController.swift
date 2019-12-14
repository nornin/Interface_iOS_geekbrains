//
//  TableViewController.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 30/11/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

struct Section<T>{
    var title: String
    var items: [T]
}

class FriendsTableViewController: UITableViewController {
<<<<<<< Updated upstream

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
=======
    var friendList = [User(name: "Вова", gender: .man, age: 15, avatar: "s1200"),
                        User(name: "Маша", gender: .man, age: 15, avatar: "s1200"),
                        User(name: "Петя", gender: .man, age: 15, avatar: "s1200"),
                        User(name: "Оля", gender: .woman, age: 15, avatar: "s1200"),
                        User(name: "Паша", gender: .man, age: 15, avatar: "s1200"),
                        User(name: "Вася", gender: .woman, age: 15, avatar: "s1200")
                        ]
    
    var friendSection = [Section<User>]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// из плоского списка создаем словарь с первым символом каждого имени
        let friendsDictionary = Dictionary.init(grouping: friendList){
            $0.name.prefix(1)
        }
        
// конвертируем словарь в массив [Section<User>]() чтобы присвоить его friendSection, key и value - 2 значения словаря. title это уникальные значения, items массив значений
        friendSection = friendsDictionary.map{ Section(title: String($0.key), items: $0.value) }
        
//        сортировка
        friendSection.sort { $0.title < $1.title}
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return friendSection.count
>>>>>>> Stashed changes
    }

//    количество строк равно количеству элементов items в каждом экземпляре Sections
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
<<<<<<< Updated upstream
        // #warning Incomplete implementation, return the number of rows
        return 0
=======
        return friendSection[section].items.count
>>>>>>> Stashed changes
    }
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
<<<<<<< Updated upstream
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
=======
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTemplate", for: indexPath) as? FriendCell else{
            return UITableViewCell()
        }
        
        cell.name.text = friendSection[indexPath.section].items[indexPath.row].name
        
        cell.avatar.photo.image = UIImage(named: friendSection[indexPath.section].items[indexPath.row].avatar)
        
        return cell
        
    }
    
//    заголовок
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        friendSection[section].title
    }
    
//    строчка из букв справа
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return friendSection.map { $0.title }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = friendList[indexPath.row].name
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if let viewController = storyBoard.instantiateViewController(identifier: "PhotoController") as? PhotoController {
            viewController.userName = name
            
            self.navigationController?.pushViewController(viewController, animated: true)
        }
>>>>>>> Stashed changes
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
