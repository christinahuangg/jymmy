//
//  body.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct body: View {
    
    @State private var showingPopover = false
    
    var body: some View {
        
        NavigationStack{
            
        //import back image
        Image("back")
            .resizable()
            .frame(width: 200.0, height: 550.0)
        
        //glutes button
        Button("glutes") {
            showingPopover = true
        }
        .offset(x: 0, y: -260)

        
        
        //calves button
        Button("Calves") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .offset(x: 40, y: -140)
        
        //hamstrings
        Button("Hamstrings") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .offset(x: -35, y: -235)
        
        //back
        Button("Back") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .offset(x: 0, y: -450)
        
        //triceps
        Button("Triceps") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .offset(x: 75, y: -500)
        
       
            VStack{
                
                NavigationLink(destination: bodyBack()) {
                    
                    Text("Flip to Back View")
                    
                }
            }
        }
        
    }
}

#Preview {
    body()
}
