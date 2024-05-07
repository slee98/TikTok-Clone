//
//  FollowingView.swift
//  TikTokClone
//
//  Created by Soyeon Lee on 5/7/24.
//

import SwiftUI
import AVKit

struct FollowingView: View {
    
    @ObservedObject var viewModel: FeedViewModel
    var player: AVPlayer

    var body: some View {
        
        VStack(alignment: .center) {
            Text("Trending creators")
                .font(.headline)
                .bold()
                .foregroundStyle(.white)
            
            Text("Follow an account to see their latest \n videos here")
                .font(.caption)
                .foregroundStyle(.white.opacity(0.6))
                .frame(width: 200, alignment: .center)
            
            ZStack {
                
                CustomVideoPlayer(player: player)
                    .containerRelativeFrame([.horizontal, .vertical])
                    .frame(width: 200, height: 200)
                
                VStack {
                    
                    Spacer()
                    Text("TikToker")
                        .foregroundStyle(.white)
                        .font(.caption)
                        .bold()
                    
                    Text("@slee98")
                        .foregroundStyle(.white)
                        .font(.caption2)
                        .foregroundStyle(.white.opacity(0.2))

                    Button {
                        
                    } label: {
                        Rectangle()
                            .fill(.pink)
                            .frame(width: 140, height: 30)
                            .cornerRadius(4)
                            .overlay {
                                Text("Follow")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .font(.caption)
                            }
                    }
                }
            }
        }
        .padding()
        .onAppear {
            viewModel.fetchFollowingPosts()
        }
    }
}

#Preview {
    let feedViewModel = FeedViewModel()
    return FollowingView(viewModel: feedViewModel, player: AVPlayer())
        .background(.black)
        .frame(width: 200, height: 400)
}
