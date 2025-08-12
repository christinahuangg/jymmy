//
//  SwiftUIView.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct SwiftUIView: View {
   
    @State private var showSheet = false
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Spacer()
                Button {
                    
                }//button ends
                label: {
                    
                    Image("addButton")
                    
                }//label ends
                
                
            }//hstack
            .padding(.horizontal)
            
        
        }//vstack
        List {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
        }
            
    }//body
}

#Preview {
    SwiftUIView()
}
