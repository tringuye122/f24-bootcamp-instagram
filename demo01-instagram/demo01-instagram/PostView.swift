//
//  PostView.swift
//  demo01-instagram
//
//  Created by Tri Nguyen on 9/17/24.
//

import SwiftUI

struct PostView: View {
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
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            Text("456,920 likes")
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
