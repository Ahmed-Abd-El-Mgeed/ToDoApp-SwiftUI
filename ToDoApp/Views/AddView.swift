//
//  AddView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 07/04/2026.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert : Bool = false
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                TextField("Type Somthing Here .... ", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Button(action: savedItemAction
                       , label: { Text("Save".uppercased())
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func savedItemAction(){
        
       if checkTextField(){
           listViewModel.addItem(title: textFieldText)
           presentationMode.wrappedValue.dismiss()
        }
    }
    
    func checkTextField() -> Bool{
        if textFieldText.count < 3 {
            alertTitle = "your New items need to add more than 3 chracters 😱"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    
}
