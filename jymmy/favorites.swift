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
