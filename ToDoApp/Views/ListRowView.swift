//
//  ListRowView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI

struct ListRowView: View {
    
    let title : String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This the first title")
}
