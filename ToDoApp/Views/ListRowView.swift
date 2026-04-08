//
//  ListRowView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle" )
                .foregroundStyle(item.isComplete ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    var item1 = ItemModel(title: "One", isComplete: true)
    var item2 = ItemModel(title: "Two", isComplete: false)
    
    Group{
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
