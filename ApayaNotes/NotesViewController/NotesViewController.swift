//
//  NotesViewController.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController, NoteDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var noteIndex: Int?
    var notes: [Note] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationController = getNavigationController()
        navigationController.navigationBar.prefersLargeTitles = true
        createNotes()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        noteIndex = nil
        let navigationController = getNavigationController()
        navigationController.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func createNote(_ sender: Any) {
        let storyboardName = "ApayaNote"
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        guard let controller = storyboard.instantiateInitialViewController() as? NoteDetailViewController else {
            fatalError("Storyboard initial view controller is not found")
        }
        controller.noteAppendableDelegate = self
        let navigationController = getNavigationController()
        navigationController.pushViewController(controller, animated: true)
    }
    
    func getNavigationController() -> UINavigationController {
        guard let navigationController = self.navigationController else {
            fatalError("Navigation controlles is not found")
        }
        return navigationController
    }
    
    func createNotes() {
        let note = Note(title: "New Title", content: "This is the content")
        let anotherNote = Note(title: "Another Title", content: "This is the another content")
        notes.append(note)
        notes.append(anotherNote)
    }

    func createNote(note: Note) {
        notes.append(note)
    }
    
    func saveNote(title: String, content: String) {
        var note = notes[noteIndex!]
        note.setTitle(title: title)
        note.setContent(content: content)
        notes.remove(at: noteIndex!)
        notes.insert(note, at: noteIndex!)
    }

}






