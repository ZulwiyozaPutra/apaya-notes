//
//  NotesViewController+UITableViewDelegate.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import UIKit

extension NotesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let storyboardName = "ApayaNote"
        
        // TODO: Unwrap
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        
        guard let controller = storyboard.instantiateInitialViewController() else {
            fatalError("Storyboard initial view controller is not found")
        }
        
        let navigationController = getNavigationController()
        navigationController.pushViewController(controller, animated: true)
    }
}
