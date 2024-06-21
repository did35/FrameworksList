//
//  ContentViewModel.swift
//  FrameworksList
//
//  Created by Didier Delhaisse on 21/06/2024.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var framework: [FrameworkModel] = Bundle.main.decode("frameworks.json")
}
