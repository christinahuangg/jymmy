import SwiftUI
import AVKit

struct FavoritesView: View {
    @State private var showPopover = false
    @State private var favoriteExerciseIDs: Set<UUID> = []
    @State private var showVideo = false
    
    // Example video URL for Wall Sit
    let wallSitVideoURL = URL(string: "https://youtu.be/-cdph8hv0O0")!
    
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
                                        .foregroundColor(Color("creamwhite"))
                                    
                                    ForEach(category.exercises) { exercise in
                                        HStack {
                                            VStack(alignment: .leading, spacing: 4) {
                                                // If it's Wall Sit, make it tappable
                                                if exercise.name == "Wall Sit" {
                                                    Button {
                                                        showVideo = true
                                                    } label: {
                                                        VStack(alignment: .leading, spacing: 4) {
                                                            Text(exercise.name)
                                                                .font(.headline)
                                                                .foregroundColor(Color("creamwhite"))
                                                            if !exercise.level.isEmpty {
                                                                Text("Level: \(exercise.level)")
                                                                    .font(.subheadline)
                                                                    .foregroundColor(Color("lightgrey"))
                                                            }
                                                            Text(exercise.instructions)
                                                                .font(.footnote)
                                                                .foregroundColor(Color("creamwhite"))
                                                        }
                                                    }
                                                    .buttonStyle(.plain)
                                                } else {
                                                    // Normal text for other exercises
                                                    Text(exercise.name)
                                                        .font(.headline)
                                                        .foregroundColor(Color("creamwhite"))
                                                    if !exercise.level.isEmpty {
                                                        Text("Level: \(exercise.level)")
                                                            .font(.subheadline)
                                                            .foregroundColor(Color("lightgrey"))
                                                    }
                                                    Text(exercise.instructions)
                                                        .font(.footnote)
                                                        .foregroundColor(Color("creamwhite"))
                                                }
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
                                                    .foregroundColor(Color("lightpink"))
                                            }
                                            .buttonStyle(.plain)
                                        }
                                        Divider()
                                    }
                                }
                                .padding()
                                .background(Color("mediumteal"))
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
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.darkBluegreen)
                } else {
                    ForEach(favoriteExercises) { exercise in
                        Text(exercise.name)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("dark bluegreen"))
                    }
                }
            }
        }
        // Sheet for in-app video
        .sheet(isPresented: $showVideo) {
            VideoPlayer(player: AVPlayer(url: wallSitVideoURL))
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    FavoritesView()
}
