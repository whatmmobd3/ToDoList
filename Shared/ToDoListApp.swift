//
//  ToDoListApp.swift
//  Shared
//
//  Created by David Nguyen on 24/11/2021.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()

            }
            .environmentObject(listViewModel)
        }
    }
}
