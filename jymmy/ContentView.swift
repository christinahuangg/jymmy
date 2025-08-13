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
            
//            Image("background")
//                .scaledToFill() // fill the entire frame without letterboxing
//                .frame(maxWidth: .infinity, maxHeight: .infinity) // take all available space
//                .ignoresSafeArea() // go under safe areas
    
            NavigationStack{
                NavigationLink("Fav") {
                    FavoritesView()
                }
            }
            }

        }//ZStack
    }//body

#Preview {
    ContentView()
}
