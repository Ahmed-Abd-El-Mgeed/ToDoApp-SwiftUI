//
//  ItemModel.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 08/04/2026.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id : String
    let title: String
    let isComplete : Bool
    
    init(id: String = UUID().uuidString, title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
    func updateModel() -> ItemModel{
        return ItemModel(id: id, title: title, isComplete: !isComplete)
    }
}
