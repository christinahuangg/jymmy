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
            
        
                
               // .scaledToFill()
               // .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
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
        }//Zstack 1 end
        VStack{
          Image("bottomButtons")
            .resizable(resizingMode: .stretch)
            .frame(width: 400.0, height: 150.0)
            .offset(x: 0, y: 90)
                    
                }//vstack2 end
        }//body end
      
        
    }//struct end

#Preview {
    home()
}


