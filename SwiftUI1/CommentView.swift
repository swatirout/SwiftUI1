//
//  ContentView.swift
//  SwiftUI1
//
//  Created by Swati Rout on 18/07/23.
//

import SwiftUI

struct CommentView: View {
    @ObservedObject private var vm = CommentViewModel()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(vm.comments) {
                        comment in
                        NavigationLink {
                           DetailCommentView(commntModel: comment)
                        } label: {
                            CommentRow(commntModel: comment)
                        }

                    }
                }
            }.onAppear{
                vm.fetchComments()
            }
            .navigationTitle("Comments")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
