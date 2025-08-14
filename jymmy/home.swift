//
//  home.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct home: View {
    var body: some View {
        ZStack{
            
            VStack(spacing:30){//vstack 2
        
                  RoundedRectangle(cornerRadius: 15)
                    .fill(Color.verylightteal)
                    .frame(width:300, height:150, alignment:.topLeading)
            
                  RoundedRectangle(cornerRadius: 15)
                     .fill(Color.darkteal)
                      .frame(width:300, height:150, alignment:.center)
                  
                    RoundedRectangle(cornerRadius: 15)
                       .fill(Color.mediumteal)
                     .frame(width:300, height:150,)
            }//vstack2 end
            
            Text("Your only limit is you")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.darkteal)
                .position(x:200, y:210)

            Text("Everyday is a chance")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:375)
            
            Text("to get stronger")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:410)
            
            
            Text("Don't let fear hold you back,")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:550)
            
            Text(" take the first step")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:585)
        
            
        }//Zstack end
                }//body end
        }//struct end
#Preview {
    home()
}


