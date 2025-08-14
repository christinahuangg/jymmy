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
            Button("    ") {
                showingPopover = true

            }
            .offset(x: 0, y: -260)

            
            
            //calves button
            Button("    ") {
                showingPopover = true

            }
            .offset(x: 40, y: -140)
            
            //hamstrings
            Button("    ") {
                showingPopover = true

            }

            .offset(x: -35, y: -235)
            
            //back
            Button("    ") {
                showingPopover = true

            }
            .offset(x: 0, y: -450)
            
            //triceps
            Button("    ") {
                showingPopover = true

            }
            .offset(x: 75, y: -500)
            
            .popover(isPresented: $showingPopover, arrowEdge: .bottom) {
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 16) {
                        ForEach(noEquipmentCategories) { category in
                            VStack(alignment: .leading, spacing: 8) {
                                Text(category.name)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                
                                ForEach(category.exercises) { exercise in
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(exercise.name)
                                            .font(.headline)
                                        if !exercise.level.isEmpty {
                                            Text("Level: \(exercise.level)")
                                                .font(.subheadline)
                                                .foregroundColor(.secondary)
                                        }
                                        Text(exercise.instructions)
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                    Divider()
                                }
                            }
                            .padding()
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading) // fill width
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity) // make LazyVStack take full width
                }//scrollView
                .frame(minWidth: 400, minHeight: 500) // optional: set minimum popover size
                
                Button("Back to Jymmy") {
                    showingPopover = false
                }
                
            }//popover
           
            ZStack{
                Image("flip")
                    .resizable(resizingMode: .stretch)
                    .frame(width: 80.0, height: 60.0)
                
                Button(action: {
                    flipped.toggle()
                }) {
                    Text("Flip for Front View")
                        .foregroundColor(Color.white.opacity(0)) // custom color
                        .padding()
                        
                        
                }

            }
        }
    }
}

#Preview {
    back()
}
