//
//  ListViewModel.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "David Nguyen", isCompleted: true),
            ItemModel(title: "Loc Nguyen Binh Duong", isCompleted: false),
            ItemModel(title: "ddnn2026", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(index: IndexSet)  {
        items.remove(atOffsets: index)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}
