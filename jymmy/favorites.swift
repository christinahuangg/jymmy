//
//  SwiftUIView.swift
//  jymmy
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct FavoritesView: View {
    @State private var showPopover = false

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    showPopover.toggle()
                } label: {
                    // Use a system image for a reliable preview. Replace with your asset if available.
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
                                        Divider()
                                    }
                                }
                                .padding()
                                .background(Color(UIColor.systemGray6))
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .leading) // fill width
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity) // make LazyVStack take full width
                    }//scrollView
                    .frame(minWidth: 400, minHeight: 500) // optional: set minimum popover size
                }//popover
            }
            .padding(.horizontal)

            List {
                Text("Content")
            }
        }
    }
}

#Preview {
    FavoritesView()
}

