//
//  back.swift
//  jymmy
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct back: View {
    @State private var flipped = false
    @State private var showingPopover = false

    var body: some View {
        VStack {
            if flipped {
                front()
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
            } else {
                backBody
            }
        }
        .rotation3DEffect(.degrees(flipped ? 180 : 0),
                          axis: (x: 0, y: 1, z: 0))
        .animation(.easeInOut(duration: 0.6), value: flipped)
    }
    
    var backBody: some View {
        VStack {
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
                    showingPopover = false
                }

            }
            .offset(x: 75, y: -500)

            Button("Flip for Front View") {
                flipped.toggle()
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    back()
}
