//
//  CommentModel.swift
//  SwiftUI1
//
//  Created by Swati Rout on 22/07/23.
//

import Foundation

struct CommentModel: Decodable, Identifiable {
    let postID, id: Int?
    let name, email, body: String?
    
    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}
