//
//  ListViewModel.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 08/04/2026.
//

import SwiftUI
import Combine

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        
        didSet{
            saveData()
        }
    }
    let itemsKey : String = "items_list"
      
    init() {
        getItems()
    }
    
    func getItems(){
        
//        let newItems = [
//            ItemModel(title: "First", isComplete: true),
//            ItemModel(title: "second", isComplete: false),
//            ItemModel(title: "third", isComplete: true)
//        ]
//        items.append(contentsOf: newItems)
        
        guard
         let data = UserDefaults.standard.data(forKey: itemsKey),
         let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = savedItems
        
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
    
    func saveData(){
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}
