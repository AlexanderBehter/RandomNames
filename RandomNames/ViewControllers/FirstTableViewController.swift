//
//  FirstTableViewController.swift
//  RandomNames
//
//  Created by Александр Бехтер on 09.06.2020.
//  Copyright © 2020 Alexander Bekhter. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    
    
    var namesList = Person.getNamed()
    override func viewDidLoad() {
        super.viewDidLoad()

         tableView.rowHeight = 65
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath)
        cell.textLabel?.text = namesList[indexPath.row].fullNames
        return cell
    }
    

   
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
         let trackDetailVC = segue.destination as! DetailViewController
        trackDetailVC.detailPersons = namesList[indexPath.randomElement()!]
    }
}
