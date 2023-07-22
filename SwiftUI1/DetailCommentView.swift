//
//  DetailCommentView.swift
//  SwiftUI1
//
//  Created by Swati Rout on 22/07/23.
//

import SwiftUI

struct DetailCommentView: View {
    var commntModel: CommentModel
    var body: some View {
        VStack {
            Text(commntModel.name  ?? "NA")
                .font(.title3)
            Text(commntModel.email ?? "NA")
                .font(.title2)
            Text(commntModel.body ?? "NA")
                .font(.body)
        }
    }
}

struct DetailCommentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCommentView(commntModel: CommentModel(postID: 1, id: 1, name: "Swati", email: "iOS@gmail.com", body: "lets learn ios"))
    }
}
