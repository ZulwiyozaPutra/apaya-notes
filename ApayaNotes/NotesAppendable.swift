//
//  NotesAppendable.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import Foundation

protocol NoteDelegate {
    func appendNote(note: Note)
    func setTitleNote(_ title: String)
    func setContentNote(_ content: String)
}
