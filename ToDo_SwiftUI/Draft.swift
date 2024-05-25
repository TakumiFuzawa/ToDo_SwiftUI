//
//  Draft.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/25.
//

import SwiftUI

struct Draft: View {
    
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle).onSubmit {
            self.createTask()
            self.userData.isEditing = false
        }
    }
    
    func createTask(){
        let newTask = Task(titel: self.taskTitle, checked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
