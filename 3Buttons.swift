//
//  3Buttons.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct _Buttons: View {
  
    var body: some View {
        Spacer()
        NavigationStack{
            VStack{
                

                ZStack{
                    
                    HStack{
                        
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 55))
                                .buttonStyle(.borderedProminent)
                                .foregroundColor(Color("dark bluegreen"))
                        }
                                            .padding()
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            
                            Image(systemName: "dumbbell.fill")
                                .font(.system(size: 65))
                                .foregroundColor(Color("dark bluegreen"))
                        }
                        .padding()
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "heart.fill")
                                .font(.system(size: 55))
                                .foregroundColor(Color("dark bluegreen"))
                   }
                        
                        .padding()
                        
                        
                    }//end HStack
                    .frame(width:350, height:100, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                        
                            .fill(Color.green.opacity(0.15))
                            .shadow(radius: 10) // shadow to the background box
                    )//end green background
                    
                }//end ZStack
            }//end VStack
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 49))
                            .foregroundColor(Color("dark bluegreen"))

                    }
                    .padding()
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        
                        Image(systemName: "dumbbell.fill")
                            .font(.system(size: 60))
                            .foregroundColor(Color("dark bluegreen"))

                    }
                    .padding()
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 53))
                            .foregroundColor(Color("dark bluegreen"))

                    }
                    .padding()
                
                }//end toolbarItemgrouop
            }//toolbar
            toolbarBackground(.green)

        }//end navStack
            
        }//end body
}// end struct







#Preview {
    _Buttons()
}
