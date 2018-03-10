//
//  NotesViewController+UITableViewDataSource.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import UIKit

extension NotesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "note"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else {
            fatalError("Cell with identifier \(cellIdentifier) is not found")
        }
        
        guard let label = cell.textLabel else {
            fatalError("Label in cell is not found. Please check the identifier in storyboard")
        }
        
        label.text = "Test Title"
        return cell
    }
}
