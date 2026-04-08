//
//  ListView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI


struct ListView: View {
    
    @State var items:[ItemModel] = [
        ItemModel(title: "First", isComplete: true),
        ItemModel(title: "second", isComplete: false),
        ItemModel(title: "third", isComplete: true)
        
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("To Do List App 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "Add",
                destination: AddView()))
    }
}



#Preview {
    NavigationView{
        ListView()
    }
}
