//
//  DetailView.swift
//  FrameworksList
//
//  Created by Didier Delhaisse on 21/06/2024.
//

import SwiftUI

struct DetailView: View {
    // MARK: - Properties
    var framework: String?
    var platform: String?
    var description: String?
    var primaryUseCases: String?
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(colors: [.pink, .cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            RoundedRectangle(cornerRadius: 8) // Adjust corner radius as needed
                .fill(Color.white) // Match GroupBox background color
                .shadow(color: Color.black.opacity(0.8), radius: 20, x: 0, y: 0)
                .frame(height: 400)
                .padding()
                .overlay (
                    GroupBox(label: Label("\(framework ?? "Framework")", systemImage: "building.columns")) {
                        ScrollView {
                            if let platform = platform, let description = description, let primaryUseCases = primaryUseCases {
                                HStack {
                                    VStack(alignment: .leading, spacing: 20) {
                                        Text("Platform:\n\(platform)")
                                        Text("Description:\n\(description)")
                                        Text("Use cases:\n\(primaryUseCases)")
                                    }
                                    .font(.headline)
                                    Spacer()
                                }
                            } else {
                                Text("Unable to display data!")
                                    .foregroundColor(.red)
                                    .font(.title2)
                            }
                        }
                        .frame(height: 310)
                        .padding()
                    }
                )
            .padding()
        }
    }
}

// MARK: - Preview
#Preview {
    DetailView()
}
