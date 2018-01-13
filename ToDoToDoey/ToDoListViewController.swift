//
//  ViewController.swift
//  ToDoToDoey
//
//  Created by user906719 on 1/13/18.
//  Copyright © 2018 John Yee. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Find Mike","Buy Eggs","Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK -  TableView Datasource
    /* Methods -
     / numberOfRowsInSection - returns integer value of count of items
     / cellforRowAt - target cell to insert values into
     / didSelectRowAt - returns an index of array of the item u selected
    */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (itemArray[indexPath.row])
        
        /* these lines add a checkmark when the cell is clicked / selected
         and when clicked again, the check will disappear
         */
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            print ("Rmove")
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            print ("Add chk")
        }
        
        
        // In order to have selected cell greyed and then goes back to white (effect)
        // without this line; cell remains grey
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

