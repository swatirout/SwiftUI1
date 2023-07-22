//
//  CokmentViewService.swift
//  SwiftUI1
//
//  Created by Swati Rout on 22/07/23.
//

import Foundation

enum DemoError: Error {
    case BadURL
    case NoData
    case DecodingError
}
class CokmentViewService {
    func getComments(completion: @escaping(Result<[CommentModel]?,DemoError>) -> Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments?") else {
            return completion(.failure(.BadURL))
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.NoData))
                
            }
            let commentResponse = try? JSONDecoder().decode([CommentModel].self, from: data)
            if let commentResponse = commentResponse {
                return completion(.success(commentResponse))
            }else{
                return completion(.failure(.DecodingError))
            }
            
        }.resume()
    }
}
