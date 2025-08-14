//
//  BottomPopup.swift
//  jymmy
//
//  Created by Xinyi Chen on 8/12/25.
//
import SwiftUI

//A reusable bottom popup that sits at the bottom-center of the screen,
//with a fixed height and width (not full screen), and a solid background.
//Use inside `.overlay(alignment: .bottom) { ... }` of your screen.
struct BottomPopup<Content: View>: View {
    // External binding that shows/hides the popup
    @Binding var isPresented: Bool
    
    // Layout + styling controls
    var height: CGFloat = 420              // fixed popup height
    var maxWidth: CGFloat = 360            // popup width (centered)
    var cornerRadius: CGFloat = 28         // rounded top look
    var background: Color = .white         // solid background color
    
    //Whatever UI you want inside the popup (e.g., a ScrollView of cards)
    private let content: Content
    
    //We accept a @ViewBuilder closure and store the built content.
    init(
        isPresented: Binding<Bool>,
        height: CGFloat = 420,
        maxWidth: CGFloat = 360,
        cornerRadius: CGFloat = 28,
        background: Color = .white,
        @ViewBuilder content: () -> Content
    ) {
        self._isPresented = isPresented
        self.height = height
        self.maxWidth = maxWidth
        self.cornerRadius = cornerRadius
        self.background = background
        self.content = content()
    }
    
    var body: some View {
        // Render only when shown. This view itself is just the popup,
        // not a full-screen overlay, so taps above it go to your screen.
        if isPresented {
            VStack(spacing: 0) {
                // The little handle pill (purely decorative)
                //Capsule()
                    //.frame(width: 80, height: 10)
                    //.foregroundStyle(.black.opacity(0.12))
                    //.padding(.top, 12)
                    //.padding(.bottom, 8)
                
                // Your actual content (e.g., ScrollView of exercise cards)
                content
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
            }
            // ize + styling for the popup "card"
            .frame(maxWidth: maxWidth, minHeight: height, maxHeight: height)
            .background(background) // SOLID color
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .shadow(color: .black.opacity(0.15), radius: 14, y: 6)
            // Hug the bottom safe-area (no visible gap on iPhones with home indicator)
            .ignoresSafeArea(edges: .bottom)
            // Slide up + fade on show/hide
            .transition(.asymmetric(
                insertion: .move(edge: .bottom).combined(with: .opacity),
                removal:   .move(edge: .bottom).combined(with: .opacity)
            ))
            // Smooth spring feel
            .animation(.spring(response: 0.38, dampingFraction: 0.82), value: isPresented)
        }
    }
}


