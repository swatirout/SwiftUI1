//
//  CommentRow.swift
//  SwiftUI1
//
//  Created by Swati Rout on 22/07/23.
//

import SwiftUI

struct CommentRow: View {
    var commntModel: CommentModel
    var body: some View {
        VStack {
            Text(commntModel.name  ?? "NA")
                .font(.title3)
            Text(commntModel.email ?? "NA")
                .font(.title2)
        }
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow(commntModel: CommentModel(postID: 1, id: 1, name: "Swati", email: "iOS@gmail.com", body: "lets learn ios"))
    }
}
