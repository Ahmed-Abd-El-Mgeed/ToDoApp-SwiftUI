//
//  ItemModel.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 08/04/2026.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id : String = UUID().uuidString
    let title: String
    let isComplete : Bool
}
