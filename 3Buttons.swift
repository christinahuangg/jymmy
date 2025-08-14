//
//  3Buttons.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct _Buttons: View {
   
    var body: some View {
        NavigationStack{
            Spacer()
            Text("Welcome")
                .foregroundColor(Color("dark bluegreen"))
                .font(.system(size: 60))

                .shadow(radius: 15)
                
            Spacer()
            Image("jymmy app icon")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            Spacer()
            HStack{
                ZStack{
                    HStack{
                        NavigationLink(destination: home()) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 60))
                                .buttonStyle(.borderedProminent)
                                .foregroundColor(Color("dark bluegreen"))
                        }
                        .padding()
                        NavigationLink(destination: front()) {
                            Image(systemName: "dumbbell.fill")
                                .font(.system(size: 70))
                                .foregroundColor(Color("dark bluegreen"))
                        }
                        .padding()
                        NavigationLink(destination: FavoritesView()) {
                            Image(systemName: "heart.fill")
                                .font(.system(size: 60))
                                .foregroundColor(Color("dark bluegreen"))
                        }
                        .padding()
                    }//end HStack
                    .frame(width:370, height:110, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color("verylightteal"))
                            .shadow(radius: 10) // shadow to the background box
                    )//end green background
                }//end ZStack
            }//end VStack
        }// end struct
    }
}






#Preview {
    _Buttons()
}
