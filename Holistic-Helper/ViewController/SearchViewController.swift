//
//  SearchViewController.swift
//  Holistic-Helper
//
//  Created by Fernando Augusto de Marins on 10/12/2017.
//  Copyright © 2017 Fernando Augusto de Marins. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    var mantras = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubject(["Om Mani Padme Hum"])
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mantras.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = mantras[indexPath.row]
        
        return cell
    }
    
    private func addSubject(_ subjects: NSArray) {
        for subject in subjects {
            mantras.append(subject as! String)
        }
    }
    
}
