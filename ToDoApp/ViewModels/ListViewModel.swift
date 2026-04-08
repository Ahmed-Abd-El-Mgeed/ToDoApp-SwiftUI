//
//  ListViewModel.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 08/04/2026.
//

import SwiftUI
import Combine

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
      
    init() {
        getItems()
    }
    
    func getItems(){
        
        let newItems = [
            ItemModel(title: "First", isComplete: true),
            ItemModel(title: "second", isComplete: false),
            ItemModel(title: "third", isComplete: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItems = ItemModel(title: "First", isComplete: true)
        items.append(newItems)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateModel()
        }
    }
    
}
