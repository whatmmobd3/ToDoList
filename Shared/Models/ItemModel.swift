//
//  ItemModel.swift
//  ToDoList (iOS)
//
//  Created by David Nguyen on 24/11/2021.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
