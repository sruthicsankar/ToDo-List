//
//  ViewController.swift
//  ToDo List
//
//  Created by Administrator on 21/06/18.
//  Copyright © 2018 sruthi. All rights reserved.
//

import UIKit

class ToDolistViewController: UITableViewController {
    let itemArray = ["find milk" , "buy eggs" , "Distroy delego"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK - Tableview Data Sourse methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itemArray.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    //MARK - Tableview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
    }
}



