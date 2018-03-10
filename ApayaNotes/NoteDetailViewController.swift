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
    
    
    
    
}
