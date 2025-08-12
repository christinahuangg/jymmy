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
            Color("creamwhite")
                .ignoresSafeArea()
            
            ZStack{
                VStack{//vstack 2
                    Text("Welcome Emily!")
                    .foregroundColor(Color.white)          }//VStack 2 end
                .background(Rectangle().foregroundColor(.mediumteal))
                .cornerRadius(15)
                .padding(20)//end2
                
                VStack{//vstack 3
                    Text("Recent workouts")
                        .foregroundColor(Color.white)
                }//Vstack 3 end
                .background(Rectangle().foregroundColor(.verylightteal))
                .cornerRadius(15)
                .padding()//end 3
                
                VStack{//vstack4
                    Text("Exersices reccommended for you")
                        .foregroundColor(Color.white)
                }//vstack4
                .background(Rectangle().foregroundColor(.darkteal))
                .cornerRadius(15)
                .padding(20)
                
                
                
                
            }//Zstack end
        }//Vstack 1 end
        .background(Rectangle().foregroundColor(.red))
        .cornerRadius(15)
        .padding(20)
    }//body end
}//struct end

#Preview {
    home()
}
