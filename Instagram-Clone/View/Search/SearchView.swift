//
//  SearchView.swift
//  Instagram-Clone
//
//  Created by Natthaporn Wimonanupong on 13/10/2564 BE.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = SearchViewModel()
    
    @State var searchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText, isEditing: $inSearchMode) // ส่งค่าที่ binding ต้องใส่ $
                .padding()
            
            ZStack{
                if inSearchMode{
                    UserListView(viewModel: viewModel, searchText: $searchText)
                }
                else{
                    PostGridView(config: .explore)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
