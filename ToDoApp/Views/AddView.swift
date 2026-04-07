//
//  AddView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                TextField("Type Somthing Here .... ", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Button(action: {
                    // ACtion here
                }, label: { Text("Save".uppercased())
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
                    
            }
            .padding()
        }
        .navigationTitle("Add An Item 🖋️")
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    
}
