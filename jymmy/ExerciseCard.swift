//
// ExerciseCard.swift
//  jymmy
//
//  Created by Xinyi Chen on 8/12/25.
//
import SwiftUI

struct ExerciseCard: View {
    var exercise: Exercise
    var height: CGFloat = 96
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(exercise.name)
                .font(.headline)
                .foregroundStyle(.white)
            Text(exercise.level)
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.9))
            Text(exercise.instructions)
                .font(.footnote)
                .foregroundStyle(.white.opacity(0.9))
                .lineLimit(2)
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, minHeight: height, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 22, style: .continuous)
                .fill(Color.teal)
        )
    }
}
