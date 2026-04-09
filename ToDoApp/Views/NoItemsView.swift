//
//  NoItemsView.swift
//  ToDoApp
//
//  Created by Ahmed Abd El Mgeed Sahm on 09/04/2026.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate : Bool = false
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 10){
                Text("there is no items !")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("are you good person you know what you want to do just add your goals and start do it")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView(),
                               label:{
                    Text("Add Somthing 😍")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.red : Color.accentColor)
                        .cornerRadius(10)
                        
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? Color.red : Color.accentColor,
                    radius: animate ? 30 : 10 ,
                    x : 0 ,
                    y: animate ? 50 : 30
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
                
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimastion)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
    
    func addAnimastion(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
                    
            ){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle("Title")
    }
    
}
