//
//  ContentView.swift
//  Demo
//
//  Created by Prathamesh Mali on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
       @State var selected = "Baseball"
    
    @State private var id = 1

    var body: some View {
        VStack {
            Text("Let's play something random").font(.system(size: 25)).foregroundStyle(.blue)
            
            VStack{
                Circle(
                ).fill(colors.randomElement() ?? .blue).padding().overlay(Image(systemName: "figure.\(selected.lowercased())").font(.system(size:144)).foregroundColor(.white))
                
                Text("\(selected)!").font(.system(size: 30)).foregroundStyle(.blue)
                
            }.transition(.slide).id(id)
            
            Spacer()
            
            Button("Try Me"){
                withAnimation(.easeInOut(duration: 1)){
                    selected = activities.randomElement() ?? "Archery"
                    id+=1
                }
            }.buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
