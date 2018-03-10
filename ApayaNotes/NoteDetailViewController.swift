//
//  NoteViewController.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextField!
    
    var note: Note?
    var noteAppendableDelegate: NoteDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationController = getNavigationController()
        navigationController.navigationBar.prefersLargeTitles = false
        
        guard let note = note else {
            fatalError("NoteDetailViewController present without note passed")
        }
        
        titleField.text = note.title
        noteField.text = note.content
    }

    func getNavigationController() -> UINavigationController {
        guard let navigationController = self.navigationController else {
            fatalError("Navigation controlles is not found")
        }
        return navigationController
    }
    
    @IBAction func saveNote(_ sender: Any) {
        guard let title = titleField.text else {
            return
        }
        noteAppendableDelegate.setTitleNote(title)
        guard let content = noteField.text else {
            return
        }
        noteAppendableDelegate.setContentNote(content)
        let navigationController = getNavigationController()
        navigationController.popViewController(animated: true)
    }
    
    
    
}
