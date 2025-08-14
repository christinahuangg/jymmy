//
//  home.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct home: View {
    var body: some View {
        VStack{
        
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
            }//Zstack end
            
        }//Vstack 1 end
    }//body end
}//struct end

#Preview {
    home()
}
