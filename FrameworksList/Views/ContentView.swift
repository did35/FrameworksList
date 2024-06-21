//
//  ContentView.swift
//  FrameworksList
//
//  Created by Didier Delhaisse on 21/06/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @StateObject private var vm = ContentViewModel()
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.pink, .cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                List(vm.framework) { item in
                    NavigationLink(destination: DetailView(framework: item.framework,
                                                           platform: item.platform,
                                                           description: item.description,
                                                           primaryUseCases: item.primaryUseCases)) {
                        Text(item.framework)
                    }
                }
                .listStyle(.plain)
                //.foregroundColor(.blue)
                .font(.headline)
                .navigationTitle("Frameworks")
            }
        }
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
