//
//  ListRow.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/09.
//

import SwiftUI

struct ListRow: View {
    
    let task: String
    
    var body: some View {
        HStack {
            Text("□")
            Text(task)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "読書")
    }
}
