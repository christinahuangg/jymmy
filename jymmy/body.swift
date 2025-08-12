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
        
            
        //import back image
        Image("back")
            .resizable()
            .frame(width: 200.0, height: 550.0)
        
        //glutes button
        Button("Glutes") {
            showingPopover = true

        }
        .offset(x: 0, y: -260)

        
        
        //calves button
        Button("Calves") {
            showingPopover = true

        }
        .offset(x: 40, y: -140)
        
        //hamstrings
        Button("Hamstrings") {
            showingPopover = true

        }

        .offset(x: -35, y: -235)
        
        //back
        Button("Back") {
            showingPopover = true

        }
        .offset(x: 0, y: -450)
        
        //triceps
        Button("Triceps") {
            showingPopover = true

        }
        .popover(isPresented: $showingPopover, attachmentAnchor: .point(.center)) {
            Text("This is a popover!")
            Button("Back to Jymmy") {
                
            }

        }
        .offset(x: 75, y: -500)
            
        
            VStack{
                
                NavigationLink(destination: bodyBack()) {
                    
                    Text("Flip for Back View")
                    
                }
            }
        }
        
    }


#Preview {
    body()
}
