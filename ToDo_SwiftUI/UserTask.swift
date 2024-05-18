//
//  UserTask.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/16.
//

import SwiftUI

struct Task: Identifiable, Equatable {
    let id = UUID()
    var titel: String
    var checked: Bool
    
    init(titel: String, checked: Bool) {
        self.titel = titel
        self.checked = checked
    }
}
