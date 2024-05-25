//
//  Draft.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/25.
//

import SwiftUI

struct Draft: View {
    
    @State var taskTitle = ""
    
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle)
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
