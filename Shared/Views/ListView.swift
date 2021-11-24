//
//  ListView.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var ListViewModel: ListViewModel
    
    var body: some View {
        NavigationView{
            List{
                ForEach(ListViewModel.items) { item in
                    ListRowView(item: item)
                }
                .onMove(perform: ListViewModel.moveItem)
                .onDelete(perform: ListViewModel.deleteItem)

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
            .environmentObject(ListViewModel())
    }
}

