//
//  RotatingMusicImageView.swift
//  TikTokClone
//
//  Created by Soyeon Lee on 5/6/24.
//

import SwiftUI

struct RotatingMusicImageView: View {
    @State var rotation: CGFloat = 0
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        HStack {
            Image(systemName: "music.note")
                .foregroundColor(.white)
            Text(": EMINEM - Lose your self")
                .foregroundStyle(.white)
            Spacer()
            ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 44, height: 44)
                    Image("MusicImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                        .rotationEffect(.degrees(rotation))
                }
                .onReceive(timer) { _ in
                    withAnimation(.linear(duration: 1)) {
                        rotation += 180
                    }
            }
        }
    }
}

#Preview {
    RotatingMusicImageView()
        .background(.black)
}
