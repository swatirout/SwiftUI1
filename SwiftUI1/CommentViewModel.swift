//
//  CommentViewModel.swift
//  SwiftUI1
//
//  Created by Swati Rout on 22/07/23.
//

import Foundation

class CommentViewModel: ObservableObject {
    
    @Published var comments =  [CommentModel]()
    
    func fetchComments() {
        CokmentViewService().getComments { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let comments):
                    self.comments = comments ?? []
                case .failure(let error) :
                    print(error)
                }
            }
        }
    }
}

