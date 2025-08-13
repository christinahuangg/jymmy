//
//  SwiftUIView.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct FavoritesView: View {
    @State private var showCard = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    showCard.toggle()
                } label: {
                    Image("addButton")
                }.popover(isPresented: $showPopover, arrowEdge: .bottom) {
                    ScrollView {
                        ZStack(alignment: .leading, spacing: 20) {
                            ForEach(noEquipmentCategories) { category in
                                VStack(alignment: .leading) {
                                    Text(category.name)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .padding(.bottom, 5)
                                    
                                    ForEach(category.exercises) { exercise in
                                        VStack(alignment: .leading, spacing: 2) {
                                            Text(exercise.name)
                                                .font(.headline)
                                            Text("Level: \(exercise.level)")
                                                .font(.subheadline)
                                                .foregroundColor(.secondary)
                                            Text(exercise.instructions)
                                                .font(.footnote)
                                                .foregroundColor(.gray)
                                                .padding(.bottom, 5)
                                        }
                                        Divider()
                                    }
                                }
                                .padding()
                                .background(Color(UIColor.systemGray6))
                                .cornerRadius(12)
                            }
                        }
                        .padding()
                    }
                    .frame(width: 350, height: 400) // Controls popover size
                }
            }
            .padding(.horizontal)
            
            List {
                Text("Content")
            }
        }
        .overlay(alignment: .bottom) {
            BottomPopup(isPresented: $showCard, height: 600) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(noEquipmentCategories) { category in
                            Text(category.name)
                                .font(.headline)
                                .padding(.horizontal)
                            
                            VStack(spacing: 12) {
                                ForEach(category.exercises) { exercise in
                                    ExerciseCard(exercise: exercise)
                                }
                            }
                            
                        }
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}
