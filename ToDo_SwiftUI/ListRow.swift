//
//  ListRow.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/09.
//

import SwiftUI

struct ListRow: View {
    
    let task: String
    var isCheck: Bool
    
    var body: some View {
        HStack {
            if isCheck {
                Text("☑")
                Text(task).strikethrough().fontWeight(.ultraLight)
            } else {
                Text("□")
                Text(task)
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "読書", isCheck: true)
    }
}
