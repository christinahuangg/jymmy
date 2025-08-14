import SwiftUI

struct front: View {
    
    @State private var flipped = false
    @State private var showingPopover = false

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
            Button("Chest") {
                showingPopover = true
            }
            .offset(x: 0, y: -420)
            
            //biceps
            Button("Biceps") {
                showingPopover = true
            }
            .offset(x: -70, y: -420)
            
            //quads
            Button("Quads") {
                showingPopover = true
            }
            .offset(x: -70, y: -250)
            
            //abs
            Button("Abs") {
                showingPopover = true

            }
            .offset(x: 0, y: -400)
            
            
            .popover(isPresented: $showingPopover, attachmentAnchor: .point(.center)) {
                Text("This is a popover!")
                Button("Back to Jymmy") {
                    showingPopover = false
                }

            }
    
            
            Button("Flip for Back View") {
                flipped.toggle()
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    front()
}
