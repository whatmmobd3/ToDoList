//
//  ListView.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "David Nguyen", isCompleted: true),
        ItemModel(title: "Loc Nguyen Binh Duong", isCompleted: false),
        ItemModel(title: "ddnn2026", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(items) { item in
                    ListRowView(item: item)
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

