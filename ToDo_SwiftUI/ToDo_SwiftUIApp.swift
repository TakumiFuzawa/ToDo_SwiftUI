//
//  ToDo_SwiftUIApp.swift
//  ToDo_SwiftUI
//
//  Created by Takumi Fuzawa on 2024/05/09.
//

import SwiftUI

@main
struct ToDo_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserData())
        }
    }
}
