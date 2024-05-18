//
//  ContentView.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/09.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else{
                            return
                        }
                        self.userData.tasks[index].checked.toggle()
                    })
                    {
                        ListRow(task: task.titel, isCheck: task.checked)
                    }
                }
                Text("+").font(.title)
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        DeleteTask()
                    })
                    {
                        Text("Delete").foregroundColor(Color.red)
                    }
                }
            }
        }
    }
    //deleteボタンを押下したときの処理
    func DeleteTask(){
        let necessaryTask = self.userData.tasks.filter({!$0.checked})
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
