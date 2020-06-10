//
//  SecondTableViewController.swift
//  RandomNames
//
//  Created by Александр Бехтер on 09.06.2020.
//  Copyright © 2020 Alexander Bekhter. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
   var naming: [Person] {
              let main = tabBarController?.viewControllers?.first as! FirstTableViewController
              return main.namesList
          }
   
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return naming.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 2
    }
    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "randomCells", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = naming[indexPath.row].eMails
            cell.imageView?.image = UIImage(systemName: "envelope.circle")
        case 1:
            cell.textLabel?.text = naming[indexPath.row].phoneNumbers
            cell.imageView?.image = UIImage(systemName: "phone.circle")
        default:
            return cell
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return naming[section].fullNames
    }
}
