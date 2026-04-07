//
//  ListView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI


struct ListView: View {
    
    @State var items:[String] = [
        "this is first item!",
        "this is second item!",
        "this is third item!",
        "this is fourth item!",
        "this is fifth item!",
        
    ]
    
    var body: some View {
        List{
            ForEach(items, id:\.self) { item in
                ListRowView(title: item)
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
