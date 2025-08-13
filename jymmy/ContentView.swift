//
//  ContentView.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Text("Change1")
                Text("Amelia")
                Text("Kylie")
                
                Text("New change - Amelia")
                
                Text("New Change - Christina")
                Text("New Change - Kylie")
                Text("Conflict testing")
            }//VStack
            
            NavigationStack{
                NavigationLink("Favorites") {
                    FavoritesView()
                        .navigationBarBackButtonHidden(true)
                }
            }
        }//ZStack
    }//body
}

#Preview {
    ContentView()
}
