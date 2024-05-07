//
//  FeedCell.swift
//  TikTokClone
//
//  Created by Soyeon Lee on 5/6/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    @State var top = 0
    
    init(post: Post, player: AVPlayer) {
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack {

            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack {
                HStack {
                    Spacer()
                    HStack(spacing: 30) {
                        Button(action: {
                            self.top = 0
                        }) {
                            Text("Follwing")
                                .foregroundColor(self.top == 0 ? .white: Color.white.opacity(0.45))
                                .fontWeight(self.top == 0 ? .bold : .none)
                        }
                        
                        Button(action: {
                            self.top = 1
                        }) {
                            Text("For You")
                                .foregroundColor(self.top == 1 ? .white: Color.white.opacity(0.45))
                                .fontWeight(self.top == 1 ? .bold : .none)
                        }
                    }
                    .padding(.leading)
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "magnifyingglass")
                            .bold()
                            .imageScale(.large)
                            .padding(.trailing)
                            .foregroundStyle(.white)
                    }
                }
                .padding(.top, 55)
                
                Spacer()
                
                HStack(alignment:.bottom) {
                    VStack(alignment: .leading) {
                        Text("\(post.title)")
                            .fontWeight(.semibold)
                        Text("\(post.description)")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    Spacer()
                    
                    VStack(spacing: 28) {
                        ZStack {
                            Image("ProfileImage")
                                .resizable()
                                .frame(width: 48, height: 48)
                                .clipShape(Circle())
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.pink)
                                .overlay {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundStyle(.white)
                                }
                                .padding(.top, 40)
                        }
                            
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                Text("44.8K")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                
                                Text("1,735")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundColor(.white)
                                Text("10.1K")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                                
                                Text("1,328")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                    }
                }
                RotatingMusicImageView()
                    .padding(.top, 20)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4", title: "Big Buck Bunny", description: "Big Buck Bunny tells the story of a giant rabbit", tags: ["Rabbit, Bunny, Big"]), player: AVPlayer())
}
