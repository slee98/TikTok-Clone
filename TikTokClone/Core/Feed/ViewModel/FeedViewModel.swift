//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Soyeon Lee on 5/6/24.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    @Published var followingPosts = [Post]()

    
    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    ]
    
    let followingVideoUrls = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
    ]
    
    init() {
        fetchPosts()
    }
     
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0], title: "Big Buck Bunny", description: "Big Buck Bunny tells the story of a giant rabbit", tags: ["Bunny", "Giant", "Rabbit"]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[1], title: "Elephant Dream", description: "The first Blender Open Movie from 2006", tags: ["Elephant", "Movie"]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[2], title: "For Bigger Escape", description: "HBO GO now works with Chromecast", tags: ["Escape", "Chromecast"]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[3], title:"For Bigger Fun", description: "Introducing Chromecast.", tags: ["Fun", "Chromecast"])
        ]
    }
    
    func fetchFollowingPosts() {
        self.followingPosts = [
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0], title: "By Garage419", description: "Tears of Steel was realized with crowd-funding by users of the open", tags: ["Garage"]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[1], title: "By Blender Foundation", description: "The first Blender Open Movie from 2006", tags: ["Blender", "Foundation"]),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[2], title: "By Garage419", description: "The Smoking Tire meets up with Chris and Jorge", tags: ["Smoking", "Tire"]),
        ]
    }

}
