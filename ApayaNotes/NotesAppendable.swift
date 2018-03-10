//
//  NotesAppendable.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import Foundation

protocol NoteDelegate {
    func createNote(note: Note)
    func saveNote(title: String, content: String)
}
