//
//  ListView.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            HStack{
                
            }
            Text("Hello, World!")

        }
        .navigationTitle("Todo List 🗒")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
