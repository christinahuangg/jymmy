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
                        }
                                            .padding()
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            
                            Image(systemName: "dumbbell.fill")
                                .font(.system(size: 65))
                        }
                        .padding()
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "heart.fill")
                                .font(.system(size: 55))
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
                            .font(.system(size: 50))
                    }
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        
                        Image(systemName: "dumbbell.fill")
                            .font(.system(size: 60))
                    }
                
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 50))
                    }
                 
                
                }//end toolbarItemgrouop
                
            }//toolbar
                
        }//end navStack
            
        }//end body
}// end struct







#Preview {
    _Buttons()
}
