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
        let index = indexPath.row
        let storyboardName = "ApayaNote"
        
        // TODO: Unwrap
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        
        guard let controller = storyboard.instantiateInitialViewController() as? NoteDetailViewController else {
            fatalError("Storyboard initial view controller is not found")
        }
        
        controller.note = notes[index]
        controller.noteAppendableDelegate = self
        self.noteIndex = index
        
        let navigationController = getNavigationController()
        navigationController.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            notes.remove(at: indexPath.row)
        }
    }
}
