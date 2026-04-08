//
//  ListView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI


struct ListView: View {
    
    
    @EnvironmentObject var listViewModel : ListViewModel
    
    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
    .environmentObject(ListViewModel())
}
