//
//  FrameworkModel.swift
//  FrameworksList
//
//  Created by Didier Delhaisse on 21/06/2024.
//

import Foundation

struct FrameworkModel: Identifiable, Codable {
    var id = UUID()
    let framework: String
    let platform: String
    let description: String
    let primaryUseCases: String
    
    private enum CodingKeys: String, CodingKey {
        case framework, platform, description, primaryUseCases
    }
}
