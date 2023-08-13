//
//  SwiftUIView.swift
//  wishkit-ios
//
//  Created by Martin Lasek on 8/12/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

import SwiftUI
import WishKitShared

struct CommentListView: View {

    @Environment(\.colorScheme)
    var colorScheme

    private let commentList: [CommentResponse]

    init(commentList: [CommentResponse]) {
        self.commentList = commentList
    }

    var body: some View {
        ScrollView {
            VStack {
                ForEach(self.commentList, id: \.description) { comment in
                    SingleCommentView(
                        comment: comment.description,
                        createdAt: comment.createdAt,
                        isAdmin: comment.isAdmin
                    )
                    .padding(.bottom, 15)
                }
            }
            .padding()
            .background(backgroundColor)
        }
    }

    var backgroundColor: Color {
        switch colorScheme {
        case .light:

            if let color = WishKit.theme.tertiaryColor {
                return color.light
            }

            return PrivateTheme.systemBackgroundColor.light
        case .dark:
            if let color = WishKit.theme.tertiaryColor {
                return color.dark
            }

            return PrivateTheme.systemBackgroundColor.dark
        }
    }
}

struct CommentListView_Previews: PreviewProvider {
    static var previews: some View {
        CommentListView(commentList: [
            CommentResponse(userId: UUID(), description: "The Only Distance That Matters Is The Distance Between Our Hearts.", createdAt: Date(), isAdmin: true),
            CommentResponse(userId: UUID(), description: "It's dangerous to go alone, take this! - Old Man", createdAt: Date(), isAdmin: true)
        ])
    }
}
