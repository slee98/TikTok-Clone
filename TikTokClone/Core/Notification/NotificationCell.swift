//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by Soyeon Lee on 5/6/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("max.verstappen")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" liked one of your post test  ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text("3d")
                    .font(.footnote)
                    .foregroundStyle(.gray)

            }
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
