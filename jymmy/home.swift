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
                    .frame(width:380, height:150, alignment:.topLeading)
            
                  RoundedRectangle(cornerRadius: 15)
                     .fill(Color.darkteal)
                      .frame(width:380, height:150, alignment:.center)
                  
                    RoundedRectangle(cornerRadius: 15)
                       .fill(Color.mediumteal)
                     .frame(width:380, height:190,)
            }//vstack2 end
            
            Text("Your only limit is you.")
                .font(.system(size: 34))
                .fontWeight(.bold)
                .foregroundColor(Color.darkteal)
                .position(x:194, y:180)

            Text("Every day is a chance...")
                .font(.system(size: 33))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:330)
            
            Text("TO GET STRONGER.")
               .font(.system(size: 34))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:390)
            
            
            Text("Don't let fear hold you back!")
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:525)
                
            Text("Take the first step.")
                .font(.system(size: 37))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .position(x:200, y:590)
        
            
        }//Zstack end
                }//body end
        }//struct end
#Preview {
    home()
}


