//
//  UserData.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/16.
//

import SwiftUI

class UserData: ObservableObject {
    
   @Published var tasks = [
        Task(titel: "筋トレ", checked: true),
        Task(titel: "昼寝", checked: false),
        Task(titel: "勉強", checked: true)
    ]
}
