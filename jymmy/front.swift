import SwiftUI

struct front: View {
    
    @State private var flipped = false
    @State private var showingPopover = false
    @State private var selectedExercises: [Exercise] = []

    var body: some View {
        VStack {
            
            if flipped {
                back()
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
            } else {
                frontBody
            }
        }
        .rotation3DEffect(.degrees(flipped ? 180 : 0),
                          axis: (x: 0, y: 1, z: 0))
        .animation(.easeInOut(duration: 0.6), value: flipped)
    }
    
    var frontBody: some View {
        
        VStack {
            
            Image("front")
                .resizable()
                .frame(width: 200.0, height: 550.0)
            
            //chest
            Button("    ") {
                showingPopover = true
            }
            .offset(x: 0, y: -420)
            
            //biceps
            Button("    ") {
                showingPopover = true
            }
            .offset(x: -70, y: -420)
            
            //quads
            Button("    ") {
                showingPopover = true
            }
            .offset(x: -40, y: -250)
            
            //abs
            Button("    ") {
                showingPopover = true

            }
            .offset(x: 0, y: -400)
            
            
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
    front()
}
