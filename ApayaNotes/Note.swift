//
//  Note.swift
//  ApayaNotes
//
//  Created by Zulwiyoza Putra on 10/03/18.
//  Copyright © 2018 Wiyoza. All rights reserved.
//

import Foundation

struct Note {
    private(set) var id: String
    private(set) var title: String
    private(set) var content: String
    private(set) var created: String
    private(set) var modified: String?
    
    init(title: String, content: String) {
        let id = UUID.init().uuidString
        self.id = id
        let created = Date()
        self.created = created.description
        self.modified = nil
        self.title = title
        self.content = content
    }
    
    init?(data: [String: Any?]) {
        guard let id = data["id"] as? String else {
            return nil
        }
        
        guard let created = data["created"] as? String else {
            return nil
        }
        
        
        guard let title = data["title"] as? String else {
            return nil
        }
        
        guard let content = data["content"] as? String else {
            return nil
        }
        
        if let modified = data["modifed"] as? String {
            self.init(title: title, content: content)
            self.id = id
            self.created = created
            self.modified = modified
        } else {
            self.init(title: title, content: content)
            self.id = id
            self.created = created
        }
    }
    
    mutating func setTitle(title: String) {
        self.title = title
        self.modified = Date().description
    }

    mutating func setContent(content: String) {
        self.content = content
        self.modified = Date().description
    }
}

