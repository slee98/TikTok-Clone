//
//  Post.swift
//  TikTokClone
//
//  Created by Soyeon Lee on 5/6/24.
//

import Foundation

struct  Post: Identifiable, Codable {
    let id: String
    let videoUrl: String
    let title: String
    let description: String
    let tags: [String]
}
