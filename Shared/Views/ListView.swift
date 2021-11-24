//
//  ListView.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is first title!",
        "This is the second!",
        "Third!"
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("To Do List 📃")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView()))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

