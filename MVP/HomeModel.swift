//
//  HomeModel.swift
//  MVP
//
//  Created by Hany Karam on 7/1/20.
//  Copyright © 2020 Hany Karam. All rights reserved.
//

import Foundation

// MARK: - HomeModel
struct HomeModel: Codable {
    let userID, id: Int?
    let title: String?
    let completed: Bool?
    
    enum CodingKeys: String, CodingKey {
        case userID
        case id, title, completed
    }
}


