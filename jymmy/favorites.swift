//
//  SwiftUIView.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//
import SwiftUI

struct FavoritesView: View {
    @State private var showPopover = false
    @State private var favoriteExerciseIDs: Set<UUID> = []

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    showPopover.toggle()
                } label: {
                    Image("addButton")
                        .resizable()
                        .frame(width: 34, height: 34)
                }
                .buttonStyle(.plain)
                .popover(isPresented: $showPopover, arrowEdge: .bottom) {
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 16) {
                            ForEach(noEquipmentCategories) { category in
                                VStack(alignment: .leading, spacing: 8) {
                                    Text(category.name)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    
                                    ForEach(category.exercises) { exercise in
                                        HStack {
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text(exercise.name)
                                                    .font(.headline)
                                                if !exercise.level.isEmpty {
                                                    Text("Level: \(exercise.level)")
                                                        .font(.subheadline)
                                                        .foregroundColor(.secondary)
                                                }
                                                Text(exercise.instructions)
                                                    .font(.footnote)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Spacer()
                                            
                                            Button {
                                                if favoriteExerciseIDs.contains(exercise.id) {
                                                    favoriteExerciseIDs.remove(exercise.id)
                                                } else {
                                                    favoriteExerciseIDs.insert(exercise.id)
                                                }
                                            } label: {
                                                Image(systemName: favoriteExerciseIDs.contains(exercise.id) ? "heart.fill" : "heart")
                                                    .foregroundColor(.red)
                                            }
                                            .buttonStyle(.plain)
                                        }
                                        Divider()
                                    }
                                }
                                .padding()
                                .background(Color: ("mediumteal"))
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    }
                    .frame(minWidth: 400, minHeight: 500)
                }
            }
            .padding(.horizontal)
            
            List {
                let favoriteExercises = noEquipmentCategories
                    .flatMap { $0.exercises }
                    .filter { favoriteExerciseIDs.contains($0.id) }
                
                if favoriteExercises.isEmpty {
                    Text("No favorites yet")
                        .foregroundColor(.secondary)
                } else {
                    ForEach(favoriteExercises) { exercise in
                        Text(exercise.name)
                    }
                }
            }
        }
    }
}

#Preview {
    FavoritesView()
}

