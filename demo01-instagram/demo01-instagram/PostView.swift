//
//  PostView.swift
//  demo01-instagram
//
//  Created by Tri Nguyen on 9/17/24.
//

import SwiftUI

struct PostView: View {
    @State private var likeCount = 456920
    @State private var isLiked = false
    @State private var isBookmarked = false
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("Lebron")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(Circle())
                Text("LebronLuvr23")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("Lebron")
                .resizable()
                .scaledToFit()
            HStack(spacing: 16) {
                Button {
                    if isLiked {
                        likeCount -= 1
                        isLiked = false
                    } else {
                        likeCount += 1
                        isLiked = true
                    }
                } label: {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .foregroundStyle(isLiked ? .red : .black)
                }
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Button {
                    if isBookmarked {
                        isBookmarked = false
                    } else {
                        isBookmarked = true
                    }
                } label: {
                    Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                        .foregroundStyle(isBookmarked ? .yellow : .black)
                }
            }
            .font(.title2)
            Text("\(likeCount) likes")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("**LebronLuvr23** So thrilled to watch my glorious pookie bear king LeBeast ball out last night! I couldn't stop dreaming about him 😫😫")
                .font(.footnote)
            Text("February 14")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    PostView()
}
